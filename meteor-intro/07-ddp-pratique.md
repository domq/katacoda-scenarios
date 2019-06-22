Nous allons rajouter notre propre canal, dont le contenu sera une collection dans la base MongoDB, et en afficher le contenu de façon rudimentaire avec Blaze.
1. Créez le répertoire `imports/api` avec le shell :<br/>`mkdir -p /home/scrapbook/tutorial/imports/api`{{execute}}<br/>💡 Puisque votre terminal est occupé par le serveur Meteor, vous pouvez en ouvrir un autre avec <i class="fa fa-plus"></i> (dans la boîte à onglets du terminal) → Open New Terminal.
1. Créez le fichier `imports/api/choses.js`{{open}} qui contient <pre class="file" data-filename="imports/api/choses.js" data-target="replace">
import { Mongo } from 'meteor/mongo';
<br/>export const Choses = new Mongo.Collection('choses');
</pre>
1. Importez ce fichier dans `server/main.js`{{open}}, en rajoutant le bout de
code suivant : <pre class="file" data-filename="server/main.js"
data-target="prepend">
import { Choses } from '/imports/api/choses';
</pre>💡 Le répertoire `imports/` n'est chargé automatiquement ni sur
le client, ni sur le serveur; c'est pourquoi il est donc nécessaire
d'importer explicitement '/imports/api/choses'. Nous appliquons ici
l'organisation des fichiers
[recommandée](https://guide.meteor.com/structure.html#es2015-modules)
par Meteor.

Votre serveur Meteor, après avoir redémarré (automatiquement) pour
prendre en compte ces changements, écoute à présent les mutations de
la collection `chosees` dans MongoDB et les fait suivre au client via
DDP. Vous pouvez observer ce processus à l'aide de la commande `meteor
mongo` :

1. Assurez-vous que le débogueur est ouvert dans Chrome et que l'onglet Meteor est actif (voir l'étape précédente du kata)<br/>💡 Pour mémoire, l'onglet «Meteor (étape 3+)» vous permet d'accéder à l'application Web; au besoin, copiez-collez son URL vers Chrome.
1. Basculez vers le terminal libre (ou ouvrez-en un nouveau) et tapez `su -l scrapbook`{{execute}}<br/>
   `cd ~/tutorial`{{execute}}<br/>
   `meteor mongo`{{execute}}<br/>
1. À l'invite du client MongoDB, vous pouvez insérer un élément dans la collection `choses` comme suit :<br/>
   `db.choses.insert({a: 1})`{{execute}}
1. Dans le débogueur de Chrome, observez l'arrivée d'un message DDP pour annoncer au navigateur la création du nouvel objet.
1. Vous pouvez vice versa observer un message DDP de suppression si vous détruisez la collection :
   `db.choses.drop()`{{execute}}
   
# Afficher les données dans l'application Web (sans débogueur !)

Nous allons à présent rajouter à la page d'accueil de l'application
Web un `widget` Blaze simpliste, pour voir dans le navigateur le
contenu de la collection — ou plus précisément, de la copie
[Minimongo](https://www.npmjs.com/package/minimongo) de cette
collection, synchronisée par DDP.

1. Ouvrez `client/main.js`{{open}} pour y importer aussi `/imports/api/choses` :<pre class="file" data-filename="client/main.js" data-target="prepend">
import { Choses } from '/imports/api/choses';
</pre>
1. Dans le même fichier, rajoutez un *helper* qui permet de lire le contenu
   de l'objet `Choses`, afin de l'afficher :<pre class="file" data-filename="client/main.js" data-target="append">
Template.hello.helpers({
  choses: () => JSON.stringify(Choses.find().fetch())
});
</pre>
1. Ouvrez `client/main.html`{{open}} pour rajouter un appel à ce *helper* dans le *template* `hello`, entre moustaches. Prenez exemple sur l'appel à `{{counter}}` pré-existant, et rajoutez par exemple juste après cette ligne : <pre class="file" data-target="clipboard">
&lt;pre&gt;
{{ choses }}
&lt;/pre&gt;
</pre>
1. Si vous effectuez de nouveau les mêmes manip's qu'au paragraphe précédent sur `db.choses` dans `meteor mongo`, les données dans l'élément &lt;pre&gt; se mettent désormais à jour en temps réel :<br/>`db.choses.insert({a: 1})`{{execute}}<br/>`db.choses.drop()`{{execute}}

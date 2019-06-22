Le kata est déjà bien assez long; aussi, pour la partie «mises à jour»
(*update*) de notre proto-application Web, nous allons tricher un peu
et utiliser le débogueur plutôt que de construire une vraie interface
graphique avec boutons HTML et événements JavaScript.

1. Ouvrez `client/main.js`{{open}} pour y rajouter cette ligne :<pre class="file" data-filename="client/main.js" data-target="append">
   window.Choses = Choses;  // XXX HACK, pour kata / échafaudage seulement
   </pre>Ceci a pour effet de rendre l'objet `Choses` visible dans le débogueur.
1. Ouvrez le débogueur dans Chrome, et sélectionnez l'onglet
   «console» — ou bien appuyez sur <kbd>Esc</kbd> pour faire
   apparaître le «tiroir console» en-dessous de l'onglet courant du débogueur
1. Tapez dans la console <pre class="file" data-target="clipboard">Choses.insert({b: 1})
</pre><pre class="file" data-target="clipboard">Choses.remove({})
</pre>

# Et la sécurité dans tout ça ?

Si vous avez bien suivi le kata, vous aurez remarqué que
<pre>Choses.remove({})</pre> est rejeté pour des questions de
sécurité... mais que tout le reste «passe» sans problème.

**La raison est que les paquetages `autopublish` et `insecure` sont installés.**
- `autopublish` fait que tous les documents de toutes les collections
  connues du serveur Meteor sont automatiquement synchronisées par
  DDP. Dans une véritable application, il faudrait user de
  [`Meteor.publish()`](https://docs.meteor.com/api/pubsub.html) pour
  choisir ce que chaque utilisateur voit — Typiquement en fonction de
  qui il est, cf. [`Meteor.user`](https://docs.meteor.com/api/accounts.html#Meteor-user)
- de même, `insecure` fait fonctionner `Choses.insert()` et ses potes
  sans poser de questions. Dans une véritable application, il faut
  également [exercer du contrôle sur les
  écritures](https://www.meteor.com/tutorials/blaze/security-with-methods).

Le *framework* Meteor vous fait la proposition assez unique de **vous
autoriser à vous inquiéter de la sécurité une fois que l'application
fonctionne** — Tout commence par<pre>
meteor remove insecure
meteor remove autopublish
</pre>

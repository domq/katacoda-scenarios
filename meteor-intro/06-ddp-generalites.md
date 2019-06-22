Une des grandes forces de Meteor, en droite ligne de sa philosophie
«piles incluses», est son modèle de données. À l'inverse d'une
application Web «traditionnelle» basée sur une API AJAX à construire,
Meteor propose le Distributed Data Protocol, une technologie
«publish-subscribe» construite sur une
[WebSocket](https://en.wikipedia.org/wiki/WebSocket); et une mise en
œuvre privilégiée avec la base de données
[MongoDB](https://en.wikipedia.org/wiki/MongoDB) qui est fournie par
défaut avec votre application Meteor.

![Architecture de DDP](https://i.stack.imgur.com/Euijj.png)

1. Si ce n'est pas déjà fait, [téléchargez et installez le navigateur
Chrome](https://www.google.com/intl/fr_fr/chrome/)
1. Lancez Chrome et installez-y le plug-in [Meteor DevTools](https://chrome.google.com/webstore/detail/meteor-devtools/ippapidnnboiophakmmhkdlchoccbgje?hl=en)
1. Dans Chrome, ouvrez votre application Web en copiant-collant
l'adresse suivante :
https://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com/
1. Réarrangez vos fenêtres pour voir à la fois votre application Web dans Chrome, et le katacoda.
1. Ouvrez le débogueur dans Chrome avec
   <kbd>⌥</kbd>+<kbd>⌘</kbd>+<kbd>I</kbd> (Mac) ou
   <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>I</kbd> (Windows®).<br/>
   ![L'onglet «Meteor» du débogueur](/domq/scenarios/meteor-intro/assets/debogueur-chrome.png)<br/>
    💡 Le débogueur de Chrome (ou de Firefox) sera votre compagnon de
   route pour toute entreprise de développement Web, que ce soit avec
   Meteor ou non. Prenez le temps de vous familiariser avec les
   possibilités du débogueur si nécessaire :
   - [inspection du DOM et des styles](https://www.youtube.com/watch?v=wcFnnxfA70g);
   - [examen de l'exécution du JavaScript](https://www.youtube.com/watch?v=H0XScE08hy8)
1. Pour l'heure, sélectionnez l'onglet Meteor du débogueur, et rechargez votre
   application. Vous pouvez d'ores et déjà observer du trafic DDP sur
   la WebSocket; le canal (*“subscription”*) `meteor_autoupdate_clientVersions`
   est comme son nom l'indique, le moyen par lequel le serveur
   indique au navigateur que le code a changé et qu'il faut donc recharger
   l'application.

# 💡 Dans la suite du kata, nous supposerons que vous arrivez à voir simultanément le katacoda et Chrome sur votre écran.

De même, et sauf mention contraire, nous recommandons de laisser le
débogueur ouvert, avec l'onglet Meteor actif.

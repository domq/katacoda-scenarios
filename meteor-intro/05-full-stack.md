Grâce à [Babel](https://babeljs.io/) et [isobuild], Meteor fournit une
plate-forme JavaScript moderne ES2015 à tous les navigateurs ou
assimilables (Electron.js, Cordova etc.) C'est ainsi, par exemple, que
`client/main.js`{{open}} utilise le mot-clé `import`, bien que cela ne
soit pas possible dans un «vrai» navigateur.

# Modification et rechargement en continu

1. [Ouvrez (ou rouvrez) votre application Meteor dans un nouvel onglet](https://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com/)
1. À présent, ouvrez le fichier `client/main.html`{{open}} à l'aide de l'éditeur de texte du katacoda
1. Traduisez en français tout ou partie des textes visibles sur l'interface Web
1. Lorsque vous sauvegardez (ce sur quoi vous n'avez pas de contrôle dans le katacoda), l'application se recharge automatiquement dans le serveur, et aussi dans le navigateur

[isobuild]:https://blog.meteor.com/isobuild-why-meteor-created-a-new-package-system-fdc3bdeba202

# Et plus encore !

Les *polyfills*, le support du débogueur avec les *source maps*, sont autant de fonctionnalités qui ne sont pas couvertes par ce katacoda mais que vous pourrez explorer plus tard.

# Organisation des fichiers

| Fichiers | Rôle |
| --- | --- |
| `client/` | Le code et les documents (HTML, CSS, images, etc.) envoyés au client |
| `client/main.html`{{open}}<br/>`client/main.css`{{open}}<br/>`client/main.js`{{open}} | L'interface graphique de l'application |
| `server/` | Le code qui s'exécute côté serveur |
| `client/main.html`{{open}}<br/>`server/main.js`{{open}} | Pas grand'chose d'intéressant, mais essayez de remplacer la ligne 4 par<br>`console.log("hello")` 
| `node_modules/`<br/>`package.json`{{open}}<br/>`package-lock.json` | Meteor est pleinement intégré à [npm](https://www.npmjs.com/); les paquetages npm sont utilisables côté serveur ou côté client. |
| `.meteor/` | Les fichiers de configuration et l'état propres à Meteor |
| `.meteor/packages`{{open}}<br/>`.meteor/versions` | Les dépendances de l'application sur [Atmosphere.js](https://atmospherejs.com/)<br/>💡 Ces fichiers sont les équivalents respectifs de `package.json` et `package-lock.json` pour le système [isobuild] |

[Plus d'informations sur la structure de l'application](https://guide.meteor.com/structure.html)

## Auto-chargement

Tout fichier `.js` dans `client/` est chargé et exécuté dans le client au chargement de l'application; de même pour `server/` dans le serveur.

[isobuild]:https://blog.meteor.com/isobuild-why-meteor-created-a-new-package-system-fdc3bdeba202)

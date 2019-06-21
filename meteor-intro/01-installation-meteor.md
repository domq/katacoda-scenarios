`curl https://install.meteor.com/ | env HOME=/root sh -x`{{execute}}

💡 La partie `env HOME=/root` est spécifique à Katacoda; vous ne devriez pas en avoir besoin sur votre station de travail.

💡 Cette opération installe une copie de node.js qui est privée pour Meteor (et du reste, pas la toute dernière version, mais plutôt celle que Meteor «préfère»). Essayez<br/>`find /root/.meteor -name node -type f`{{execute}}<br/>`/root/.meteor/packages/meteor-tool/*/*/*/bin/node --version`{{execute}}


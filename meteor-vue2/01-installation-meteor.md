1. Installer node.js:
   - `curl https://deb.nodesource.com/setup_10.x | sh -x`{{execute}}
   - `apt -q -y install nodejs`{{execute}}
1. Installer Meteor:
   - `curl https://install.meteor.com/ | env HOME=/root sh -x`{{execute}}<br/>💡 La partie `env HOME=/root` est spécifique à Katacoda; vous ne devriez pas en avoir besoin sur votre station de travail.

Votre Meteor apparaîtra à l'adresse https://[[HOST_SUBDOMAIN]]-3000-[[KATACODA_HOST]].environments.katacoda.com/


1. Ouvrez le fichier `.meteor/packages`{{open}} et rajoutez les lignes qui suivent où vous voulez :<pre class="file" data-target="clipboard">akryum:vue
akryum:vue-component
jquery
</pre>
1. Votre application Meteor charge ces paquetages depuis Atmosphere.js (sans s'arrêter), et installe leurs dépendances. Cependant, c'est Vue.js version 1 qui sera sélectionné par défaut. Aussi, il faut exécuter manuellement `meteor npm install --save vue@2`<br/>💡 Puisque votre terminal est occupé par le serveur Meteor, vous pouvez en ouvrir un autre avec <i class="fa fa-plus"></i> (dans la boîte à onglets du terminal) → Open New Terminal; puis :<br/>`su -l scrapbook`{{execute}}<br/>`cd tutorial`{{execute}}<br/>`meteor npm install --save vue@2`{{execute}}
1. Créez un répertoire `imports/ui` : <br/>`mkdir -p imports/ui`{{execute}}
1. Créez un fichier `imports/ui/App.vue`{{open}} qui contient <pre class="file" data-filename="imports/ui/App.vue" data-target="replace">
&lt;template&gt;
&lt;div class="app"&gt;
  &lt;h1&gt;Exemple avec Vue 2.x&lt;/h1&gt;
  &lt;p&gt;
    Vous avez pressé le bouton {{count}} fois.
  &lt;/p&gt;
  &lt;button @click="addOne"&gt;{{ buttonLabel }}&lt;/button&gt;
&lt;/div&gt;
&lt;/template&gt;
<br/>&lt;script&gt;
export default {
  data() {
    return {
      count: 0,
      buttonLabel: 'Cliquez-moi !',
    }
  },
  methods: {
    addOne() { this.count++ }
  }
};
&lt;/script&gt;
<br/>&lt;style&gt;
body {
  margin: 30px;
}
<br/>a {
  color: #40b883;
  text-decoration: none;
}
<br/>h1, h2 {
  font-weight: normal;
}
&lt;/style&gt;
</pre>
1. Rajouter en bas de `client/main.js`{{open}} les lignes suivantes :<pre class="file" data-target="clipboard">import Vue from 'vue';
import App from '/imports/ui/App.vue';
<br/>
Meteor.startup(() =&gt; {
  new Vue({
    render: h =&gt; h(App),
  }).$mount('h1');
});
</pre>

**⚠ À ce stade, vous devez voir deux boutons dans votre application
Web.** Vérifiez que c'est le cas avant de passer à la suite du kata.

Suggestions :
- Contrôlez que vous avez bien effectué toutes les étapes ci-dessus
- Redémarrez le serveur Meteor
- Rechargez le navigateur — 💡 lorsque Meteor se plante côté client, le rechargement automatique cesse de fonctionner (c'est compréhensible)


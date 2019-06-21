1. Ouvrez le fichier `.meteor/packages`{{open}} et rajoutez les lignes qui suivent où vous voulez :<pre class="file" data-target="clipboard">akryum:vue-component
jquery
</pre>
1. Votre application Meteor charge ces paquetages depuis Atmosphere.js, mais plante peu après. Si vous scrollez vers le haut, vous pourrez voir un message à propos de `Unable to resolve some modules`, et la ligne de commande qui réparera le problème pour vous :<br/>`meteor npm install --save vue`{{execute}}<br/>Exécutez cette commande (quitte à interrompre le serveur Meteor avec ^C et à le relancer ensuite)<br>💡 `npm install --save vue` [fonctionnerait tout aussi bien](https://guide.meteor.com/using-npm-packages.html) dans la mesure où `npm` est installé dans le `$PATH`.
1. Créer un fichier `imports/ui/App.vue`{{open}} qui contient <pre class="file" data-filename="imports/ui/App.vue" data-target="replace">
&lt;template&gt;
&lt;div class="app"&gt;
  &lt;h1&gt;Simple Meteor example using Vue 2.x&lt;/h1&gt;
  &lt;p&gt;
    You pressed the button {{count}} time(s).
  &lt;/p&gt;
  &lt;button @click="addOne"&gt;{{ buttonLabel }}&lt;/button&gt;
&lt;/div&gt;
&lt;/template&gt;

&lt;script&gt;
export default {
  data() {
    return {
      count: 0,
      buttonLabel: 'Click me!',
    }
  },
  methods: {
    addOne() { this.count++ }
  }
};
&lt;/script&gt;

&lt;style&gt;
body {
  margin: 30px;
}

a {
  color: #40b883;
  text-decoration: none;
}

h1, h2 {
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

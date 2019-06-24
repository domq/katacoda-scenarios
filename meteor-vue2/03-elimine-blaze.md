Votre application Web a deux boutons (si ce n'est pas le cas, veuillez
revenir à l'étape précédente). Le premier est rendu avec Vue.js, et
l'autre avec [Blaze](http://blazejs.org/guide/introduction.html), le
moteur de *templating* d'origine de Meteor (qui date d'avant
l'invention de Vue.js et [React](https://reactjs.org/)).

# Nettoyage du code

Si vous ouvrez `client/main.js`{{open}}, et
`client/main.html`{{open}}, vous pourrez avoir un aperçu de comment
Blaze fonctionne et «accroche» le HTML avec le JavaScript. À ce stade,
ce code ne nous intéresse plus :

1. Remplacez `client/main.html`{{open}} par juste le minimum vital
   pour que le composant `App.vue` trouve à «s'accrocher», soit  <pre class="file" data-filename="client/main.html" data-target="replace">
&lt;head&gt;
  &lt;title&gt;tutorial&lt;/title&gt;
&lt;/head&gt;
<br/>&lt;body&gt;
&lt;div id="vue-goes-here"&gt;&lt;/div&gt;
&lt;/body&gt;
</pre>
1. Modifiez `client/main.js`{{open}} pour correspondre, soit <pre class="file" data-filename="client/main.js" data-target="replace">
import Vue from 'vue';
import App from '/imports/ui/App.vue';
<br/>import './main.html';
<br/>Meteor.startup(() =&gt; {
  new Vue({
   render: h =&gt; h(App),
  }).$mount('#vue-goes-here');
});
</pre>

# Plus qu'un bouton !

Ne passez pas à l'étape suivante tant que vous n'avez pas réussi à
refaire fonctionner la Web app, en n'affichant plus qu'un seul bouton.

# Suppression des dépendances

Une fois que c'est fait, vous pouvez supprimer la ligne
`blaze-html-templates` de `.meteor/packages`{{open}}.


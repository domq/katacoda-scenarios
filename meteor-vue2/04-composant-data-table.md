Dans cette partie, nous allons mettre en œuvre Vue.js sans aucun usage
de Meteor, simplement pour mettre en page des données sous la forme d'une table.

1. Créez `imports/ui/DataTable.vue`{{open}} avec le canevas suivant :
   <pre class="file" data-target="clipboard">
&lt;template&gt;
&lt;table&gt;
&lt;tr&gt;
  &lt;th scope="col"&gt;Name&lt;/th&gt;
  &lt;th scope="col"&gt;Quest&lt;/th&gt;
  &lt;th scope="col"&gt;Favorite color&lt;/th&gt;
  &lt;th scope="col"&gt;Unladen swallow velocity&lt;/th&gt;
&lt;/tr&gt;
&lt;/table&gt;
&lt;/template&gt;
&lt;script&gt;
const testData = [
  {name: "Lancelot", quest: "To seek the Holy Grail", favoriteColor: "blue"},
  {name: "Arthur", quest: "To seek the Holy Grail", favoriteColor: "green"},
  {name: "Galahad", quest: "To seek the Holy Grail", unladenSwallowVelocity: 0}
]
export default {
  data: () =&gt; ({testData})
}
&lt;/script&gt;
</pre>
1. En vous aidant du [guide de Vue.js](https://vuejs.org/v2/guide/#Conditionals-and-Loops), complétez le `&lt;template&gt;` pour faire afficher les données de test.

[Solution](https://github.com/epfl-idevfsd/meteor-kata/commit/b0e03fb90276390056cbb6dd46f20244de0ab68e)

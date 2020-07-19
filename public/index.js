/* global axios */

axios.get("http://localhost:3000/api/actors").then(function (response) {
  var actors = response.data;
  console.log(actors);
}).catch(e => {
  console.log(e);
});

console.log("Sanity Check");
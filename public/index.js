/* global axios */

console.log("hello");

axios.get("http://localhost:3000/actors.json").then(function (response) {
  var actors = response.data;
  console.log(actors);
});

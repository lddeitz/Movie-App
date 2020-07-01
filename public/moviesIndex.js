
axios.get("https://localhost:3000/api/movies").then(function (response) {
  var movies = response.data;
  console.log(movies);
}).catch(e => {
  console.log(e);
});

// console.log("Sanity Check");
/**
 * Created by macbook on 2016-10-03.
 */
// 3. Given a JavaScript object that looks like this:
// var majorCities = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"]};
// Write a piece of code that loops through the object and prints the following to the console: BC has 3 main cities AB has 2 main cities

var majorCities = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"]};

for (prop in majorCities) {
    console.log(prop + " has " + majorCities[prop].length + " main cities");


}
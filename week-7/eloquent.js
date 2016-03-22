// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var language = "Ruby"
language + " " + "JavaScript"

//var food = prompt("What's your favorite food")
//console.log("Hey! That's my favorite too!")

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var n = "#";
var counter = 1

while (counter < "triangle".length) {
	console.log(n);
	counter += 1;
	n += "#"
}

// Functions

// Complete the `minimum` exercise.
function min(x,y){
	if (x > y) 
		return y;
	else
		return x;
}
console.log(min(0,-10))


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
me = {
	name: "Mohamed", 
	age: 29, 
	"favorite foods": ["ginger chicken soup", "curry goat", "sushi"],
	quirk: "talk to myseflf in the shower"
};
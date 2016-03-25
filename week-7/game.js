 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: shoots balloons with a crossbow
// Goals: try to get the max score
// Characters: Daryl 
// Objects: Daryl, crossbow, baloon,
// Functions: shoot, calcutate score and save best score.

// Pseudocode
//OBJECT
// 	create the daryl object with properties : names ,weapon, attemps
//OBJECT
// 	create the crossbow object with properties: arrow, color, type
//OBJECT
// 	create a ballon objects with properties : numbers, range, pop
// FUNCTION
// 	 make a function that will make the crossbow shoot the balloons at different target range.
// FUNCTION
// 	make a function that will add up the number of balloons popped, give total score, and display it
//
//

// Initial Code
// var daryl = {
// 	name: 'Daryl',
// 	weapon: 'crossbow',

// }

// var crossbow = {
// 	arrows: 5,
// 	// color : ['blue','red','pink']

// }

// var balloons = {
// 	// colors : ['red','yellow','pink'],
// 	shots: {
// 		'Popped': 3,
// 		'Missed': 0,
// 	}
// }
// var bestScore = 0;
// var arroLeft = crossbow.arrows;
// var count  = 0;
// var score = 0;
// var points = 0;

// var shoot = function(){
// 	arroLeft--;
// 	var shot = Object.keys(balloons.shots)[Math.floor(Math.random() * Object.keys(balloons.shots).length)]
// 	console.log("You " + shot + " the balloon! " + balloons.shots[shot] + " Points");
// 	points += balloons.shots[shot];
// 	if (arroLeft === 0){
// 		score(points);
// 	}

// }

// var score = function(score){
// 	if (score === 15){
// 		console.log("Woohoo !! perfect score " + score + "!");
// 	} else {
// 		console.log("Your Score is " + score);
// 	}
// }

// shoot();
// shoot();
// shoot();
// shoot();
// shoot();

// Refactored Code
var daryl = {
	name: 'Daryl',
	weapon: 'crossbow',

}

var crossbow = {
	arrows: 5,
	// color : ['blue','red','pink']

}

var balloons = {
	// colors : ['red','yellow','pink'],
	shots: {
		'Popped': 3,
		'Missed': 0,
	}
}
// var bestScore = 0;
var arroLeft = crossbow.arrows;
var score = 0;
var points = 0;
function shoot(){
	arroLeft--;
	var shot = Object.keys(balloons.shots)[Math.floor(Math.random() * Object.keys(balloons.shots).length)]
	console.log("You " + shot + " the balloon! " + balloons.shots[shot] + " Points\n");
	points += balloons.shots[shot];
	if (arroLeft === 0){
		score(points);
	}

}

var score = function(score){
	if (score === 15){
		console.log("Woohoo !! perfect score " + score + "!");
	} else {
		console.log("Your Score is " + score);
	}
}

shoot(); //first shot
shoot(); //second shot
shoot(); 
shoot();
shoot();
// more work to come..


// Reflection
// What was the most difficult part of this challenge?
// I wasn't able to save the scores so I can implement a best score feature. Since it's an MVP game now, i will try to move on
// with the other challenges, and I will comeback to it later.

// What did you learn about creating objects and functions that interact with one another?
// In a non techical perpective, I learned that creationg objects is like making the working parts of a program and functions are 
// are like the engines or brain of that working program.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
// I learned about the "Object.keys" method, it returns only the properties on an object and. when used on an Array it returns 
// an array of indexes.

// How can you access and manipulate properties of objects?
// You can access properties of object by the dot and the bracket notations.

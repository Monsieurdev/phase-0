// JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up




// Bulk Up
var atletes = [
  sarah = {
     name:'Sarha Hughes', 
     'event': 'Ladies singles'},
  floyd = {
    name:'Floyd Mayweather',
    'event': 'Mayweather vs Pacquiao'
  },

  serena = {
    name: 'Serena Williams',
    'event': 'US OPEN'
  }
];

var check_atlete = function(array){
  for (var i = 0 ; i < array.length; i++)
    array[i].win = array[i].name + " won " + array[i].event;   
  return array;
}

console.log(check_atlete(atletes))

// reverse

var reverseString = function(string){
  return string.split('').reverse().join('');
}

console.log(reverseString('hello'));


// Jumble your words




// 2,4,6,8




// "We built this city"


function Athlete(name,age,sport,quote){
  this.name  = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote;
};


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
// What JavaScript knowledge did you solidify in this challenge?
// My knowledge on Arrays and objects was solidified.

// What are constructor functions?
// they are another way to create objects in javascript, unlike the literal notation,
// constructor functions are prefered if multiple instances the objects will be created.

// How are constructors different from Ruby classes (in your research)?
// In ruby classes are objects that manufacture other objects and define a behiavior for them. while in JavaScript 
// constructors handle the creation of objects and prototype set their behiaviors.
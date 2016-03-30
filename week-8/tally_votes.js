 // Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Benjamin R Flores
// This challenge took me [4] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// FOR IN
    // access the objects of the object vote.
    // access the positions of the objects students.
    // retrieve the names and assigned them to the vote count object and assigned them a default value of 1.
// FOR IN
    // access the objects of the object vote.
    // access the positions of the objects students.
    // update the number of votes in the vote count object.
// FOR IN
    // access the objects of the object count.
    // set a default maximum value.
    // access the names of the object position and retrieve the votes.
    // IF
       // the vote is more the maximum vote then maximum vote is the current vote.
       // the name of the officer is whoever has that maximum vote.
// __________________________________________
// Initial Solution
for (var students in votes){
  if(!votes.hasOwnProperty(students)) continue;
  var student = votes[students]
  for(var po in student ){
   if(!student.hasOwnProperty(po)) continue;
  var name = student[po]
  voteCount[po][name] = 0;
  } 

}

for (var students in votes){
  if(!votes.hasOwnProperty(students)) continue;
  var student = votes[students]
  for(var po in student ){
   if(!student.hasOwnProperty(po)) continue;
  var name = student[po]
  voteCount[po][name]++;
  } 

}

for (var po in voteCount){
  if(!voteCount.hasOwnProperty(po)) continue;
  var maxVote = 0;
  var obj = voteCount[po]
  for (var name in obj){
    if(!obj.hasOwnProperty(name)) continue;
    vote = obj[name];
    if(vote > maxVote){
    maxVote = vote;
    officers[po] = name;
   }
  }
}









// __________________________________________
// Refactored Solution

for (var students in votes){
  var student = votes[students]
  for(var po in student ){
  var name = student[po]
  voteCount[po][name] = 0;
  } 

}

for (var students in votes){
  var student = votes[students]
  for(var po in student ){
  var name = student[po];
  voteCount[po][name]++;
  } 

}

for (var po in voteCount){
  var maxVote = 0;
  var obj = voteCount[po];
  for (var name in obj){
    vote = obj[name];
    if(vote > maxVote){
    maxVote = vote;
    officers[po] = name;
   }
  }
}







// __________________________________________
// Reflection
// What did you learn about iterating over nested objects in JavaScript?
// I learned that for in loop is great a way to iterate over nested objects, and the brackets notation is
// is more appropriate when dealing with nested arrays.

// Were you able to find useful methods to help you with this?
// honnestly, we couldn't find any methods in the docs so we did mechanically.

// What concepts were solidified in the process of working through this challenge?
// Accession variables was solidified in this challenge because we had to manipulate the nested objects 
// untill we were able to get what we want.





// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)
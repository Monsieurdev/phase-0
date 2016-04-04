// Pseudocode:
// IF
	// the list is empty return nothing
// set longest string equals the first element of the list
// FOR
	// iterate over the list 
	// IF
		// the word is longer that the longest word then the longest word is equal to te current word.
	// return the word.



// Initial solution.

// var longestString = function(listOfWords) {
// 	if (listOfWords.length === 0){
// 		return null;
// 	}
// 	var longestString = listOfWords[0];
// 	for ( i = 0; i < listOfWords.length; i++) {
// 		if (listOfWords[i].length > longestString.length) {
// 			longestString = listOfWords[i];
// 		}
// 	}
// 	console.log(longestString);
// }

// longestString(['cat', 'zzzzzzz', 'apples'])

// Refactor Solution

function listString(listOfWords) {
	if (listOfWords.length === 0){
		return null;
	}
	var longestString = listOfWords[0];
	for (word in listOfWords) {
		if (listOfWords[word].length > longestString.length) {
			longestString = listOfWords[word];
		}

	}
	console.log(longestString);
}
listString(['cat', 'zzzzzzz', 'apples']);

// What concepts did you solidify in working on this challenge?
// My knowledge on javascript array was solidified, I used both the for an for in loop 

// What was the most difficult part of this challenge?
// Nothing was difficult, It was a straight forward convertion, it allowed to me to review how
// to iterate properly in javascript.

// Did you solve the problem in a new way this time?
// No. I tried to do it in a different way but I couldn't get away from the same structure as in ruby.

// Was your pseudocode different from the Ruby version? What was the same and what was different?
// My pseudocode is definetly different because it is better now, before I didn't really understand 
// pseucoding, but now I think my pseudocode improved a lot.

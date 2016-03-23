// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Benjamin R flores

// Pseudocode
// Input:
// 	Takes a number.
// Output:

// 	return the number separated with commas.
// convert the number into string.

// IF 
 	// the number is less than four digits return the numer without comma.
// ELSIF
   	// the number is 5 digits put a comma.
// ELSIF
	// the number is 6 digits put a comma.
// ELSE
	// the number is 7 digits put 2 commas.
// display the output.



// Initial Solution


var separateComma = function(num) {
	var newString = '';
	num = String(num);
	if (num.length === 4)
		for(var i = 0; i < num.length; i++)
			if( i === 1)
				newString +=  ',' + num[i];
			else
				newString +=  num[i];
	else if (num.length === 5)
		for(var i = 0; i < num.length; i++)
			if( i === 2)
				newString +=  ',' + num[i];
			else
				newString +=  num[i];
	else if (num.length === 6)
		for(var i = 0; i < num.length; i++)
			if( i === 3)
				newString +=  ',' + num[i];
			else
				newString +=  num[i];
	else if (num.length === 7)
		for(var i = 0; i < num.length; i++)
			if( i === 1 || i === 4)
				newString +=  ',' + num[i];
			else
				newString +=  num[i];
	else if (num.length === 8)
		for(var i = 0; i < num.length; i++)
			if( i === 2 || i === 5)
				newString +=  ',' + num[i];
			else
				newString +=  num[i];
	else
		for(var i = 0; i < num.length; i++)
			newString +=  num[i];
		return newString;
};
console.log(separateComma(1000));

// Refactored Solution

var separateComma = function(num) {
	var newString = '';
	num = String(num);
	for(var i = 0; i < num.length; i++)
		if ( num.length - i === 4 || num.length - i === 7 || num.length - i === 10)
			newString += num[i] + ',';
		else
			newString += num[i];
    return newString;
};
console.log(separateComma(1569743));

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
// We tried to use the same approach as with ruby but I kept in mind that will need different syntax structures. 

// What did you learn about iterating over arrays in JavaScript?
// I learned that you can iterate over arrays by intializing an index that starts with zero if you want to start with the first element.

// What was different about solving this problem in JavaScript?
// The syntax was different and we didn't have the luxery of enurable methods like in ruby such as the each, map methods.

// What built-in methods did you find to incorporate in your refactored solution?
// except the the "Stirng" method we couldn't really find any other built-in methods.







// Your Own Tests (OPTIONAL)




// Reflection
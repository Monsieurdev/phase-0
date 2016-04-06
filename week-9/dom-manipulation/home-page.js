// DOM Manipulation Challenge


// I worked on this challenge Benjamin R Flores.


// Add your JavaScript calls to this page:

// Release 0:

// Release 1:

 
document.getElementById("release-0").className += " done";

// Release 2:


document.getElementById("release-1").style.display = "none";



// Release 3:
 document.getElementsByTagName("H1")[0].innerHTML = "I completed release 2."



// Release 4:
document.getElementById("release-3").style.background = "#955251";



// Release 5:
var x = document.getElementsByClassName("release-4");
for (i = 0; i < x.length; i++) {
	x[i].style.fontSize = "2em";
}
// Release 6:
var tmpl = document.getElementById('hidden');
document.body.appendChild(tmpl.content.cloneNode(true));

//  Reflection

// What did you learn about the DOM?
// I learned that you can make modifications to your html with javascript, there are many methods you can use
// to manipulate the DOM.
// What are some useful methods to use to manipulate the DOM?
// Some usefull methods are "getElementById", "getElementByTagName", "appendChild" etc.
// in type safe Dart, you can declare most variables without explicitly
// specifying their type using **var**. the variables' type are infered
// based on their initial values

var name = 'George Soros';
var year_of_birth = 1930;
var antennaDiameter = 3.7;
var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
var image = {
	'tags': ['mars', 'home'],
	'url': '//path/to/saturn.jpg'
};

// explicitly declaring the type that you want to be inferred
String name_ = 'Bob Odenkirk';

void main() {
	var i, k;
	double? j; // nullable variable definition

	i = 300;
	//j = -3.14; nullable values are initialized by default, so let me test this
	k = null;
	print(i.abs());
	print(j?.abs()); // testing default initialization here
	print(k.abs());
}



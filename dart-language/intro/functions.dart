// functions as first class objects 'member everything
// that is assigned to a var in dart is a object

void printElement(int element) {
	print(element);
}

var list = [1, 2, 3];

// pass printElement as a argument.

void main() {
	list.forEach(printElement);
}


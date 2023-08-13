// 1. you can control nullability by adding a ? to the end of a type declaration
// 2. initialize variables be4 using 'em nullable values default to null, so they
// are initialized by default
// 3. you can't access properties or call methods on expressions with a nullable type
// except where the property/method is supported by the null type. e.g. hashCode/toString()

void main() {
	int? lineCount;
	assert(lineCount == null);
}

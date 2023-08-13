// we create reference to a variable so as to not take direct ownership of it
// this is called borrowing data and it does not transfer ownership to the function that 
// is borrowing the data. this enables multiple parts of code to access and work with
// the same data simultaneously.
// they do not work completely like pointers in C in this manner

fn main() {
    let value: i8 = 42;
    let result = get_value(&value); // creating a reference to var value
    println!("Result: {}", result);
}

fn get_value<'a>(data: &'a i8) -> &'a i8 {
    // let rval = i8::from(data);
    data 
}

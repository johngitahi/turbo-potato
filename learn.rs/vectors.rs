// rust vectors, just like python lists(in some ways)
fn main() {
    let mut v = vec!["Heasky", "Alex", "Yvonne", "Mike", "Kim"];

    let third: String = v[2].to_string();
    println!("The third element is {third}");

    let third: Option<&&str> = v.get(1);
    match third {
        Some(third) => println!("The third element is {third}"),
        None => println!("There is no third element."),
    }
    v.push("Noma");
}

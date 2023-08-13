fn main() {
    let gitahi = Person { name: "Gitahi" };
    println!("Name: {}", gitahi.name);
}

struct Person {
    name: &'static str,
}


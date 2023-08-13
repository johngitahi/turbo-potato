
fn main() {
    // illustrate what you can't do with a borrowed value
    let mut randn: i8 = 1;
    //let new = modify(&randn);
    modify(&randn);
    //println!("modified randn: {}", new);
    println!("modded randn = {}", randn);
}

fn modify(data: &i8) -> i8 {
    data + 1
}


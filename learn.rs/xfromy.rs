// methods for type conversion mostly on number ds

fn main() {
    let num: u32 = 1;
    let _bool = false && true;
    println!("num: u32 = {}", num);

    let f64num = f64::from(num);
    println!("f64num = {}", f64num);

    let boolnum = u32::from(_bool);
    println!("boolnum = {}", boolnum);
}

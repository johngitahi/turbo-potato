// ilog10(self) returns the base 10 log of a number, rounded down(from docs)

fn main() {
    let n: u32 = 100;
    assert_eq!(n.ilog10(), 2);
    assert_eq!(1_u32.ilog10(), 0);
}

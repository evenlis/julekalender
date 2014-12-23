// Yes, I know this looks stupid. But in the time of writing, pow has not yet been implemented for
// int trait of Rust
fn pow(num: int, p: int) -> int {
    let mut res = 1;
    for i in range(0,p) {
        res *= num;
    }
    res
}

fn has_desired_property(x: int) -> bool {
    let mut num = x;
    let mut power = 1i;
    while num != 0 {
        let start = x / pow( 10,power );
        let end = x % pow( 10,power );
        if pow( (start + end),2 ) == x {
            return true;
        }
        power += 1;
        num /= 10;
    }
    false
}

fn main(){
    let mut count = 0i;
    for i in range( 10,1000000 ){
        if has_desired_property(i) {
            count += 1;
            println!("i: {}",i);
        }
    }
    println!("{}", count);
}

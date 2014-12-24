fn magnitude(x: int) -> int {
    let mut num = x;
    let mut count = 0i;
    while num != 0 {
        num /= 10;
        count += 1;
    }
    count
}

fn pow(num: int, power: int) -> int {
    let mut res = num;
    for i in range(1,power) {
        res *= num;
    }
    res
}

fn has_desired_property(x: int) -> bool {
    4*x == pow(10,magnitude(x)-1) * (x%10) + x/10
}

fn main(){
    let mut num = 6;
    while true {
        if has_desired_property(num) {
            println!("Ans: {}", num);
            return;
        }
        num += 10
    }
}

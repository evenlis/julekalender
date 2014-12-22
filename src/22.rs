use std::collections::HashSet;

fn sum_of_squares(x: int) -> int {
    let mut sum: int = 0;
    let mut num: int = x;
    while num > 0 {
        let digit = num % 10;
        sum += digit*digit;
        num /= 10;
    }
    sum
}

fn main(){
    let mut encountered:HashSet<int> = HashSet::new();
    'outer: for i in range(1i,51i){
        let mut num = i;
        while num != 1 {
            num = sum_of_squares(num);
            if encountered.contains(&num){
                println!("Cyclic: {}", i);
                encountered.clear();
                continue 'outer;
            } else {
                encountered.insert(num);
            }
        }
        println!("Terminates: {}", i);
        encountered.clear();
    }
}

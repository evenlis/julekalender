use std::collections::HashSet;
use std::vec::Vec;
use std::num::SignedInt;
fn digitSum(x: int, y: int) -> int{
    let mut sum = 0i;
    let mut num = x;
    while num > 0 {
        sum += (num.abs())%10;
        num /= 10;
    }
    num = y;
    while num > 0 {
        sum += (num.abs())%10;
        num /= 10;
    }
    sum
}

fn neighbours(point: (int, int)) -> [(int,int), ..4]{
    let (x,y) = point;
    [(x+1,y),(x-1,y),(x,y+1),(x,y-1)]
}

fn main(){
    let mut visited: HashSet<(int,int)> = HashSet::new();
    let mut vec: Vec<(int,int)> = Vec::new();
    vec.push((0,0));
    visited.insert((0i,0i));
    while !vec.is_empty(){
        let current: (int,int) = match vec.pop() {Some(x) => x,None => (0,0)};
        for neighbour in neighbours(current).iter(){
            if !visited.contains(neighbour) && digitSum(neighbour.0,neighbour.1) < 20{
                visited.insert(*neighbour);
                vec.push(*neighbour);
                println!("Visited: {}",neighbour);
            }
        }
    }
    println!("{}",visited);
}

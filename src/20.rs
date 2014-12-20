use std::collections::HashSet;
use std::collections::RingBuf;
use std::num::SignedInt;
fn digitSum(x: int, y: int) -> int{
    let mut sum = 0i;
    let mut num = x.abs();
    while num > 0 {
        sum += (num)%10;
        num /= 10;
    }
    num = y.abs();
    while num > 0 {
        sum += (num)%10;
        num /= 10;
    }
    sum
}

fn neighbours(point: (int, int)) -> [(int,int), ..4]{
    let (x,y) = point;
    [(x+1,y),(x,y+1),(x-1,y),(x,y-1)]
}

fn main(){
    let mut visited: HashSet<(int,int)> = HashSet::new();
    let mut buf: RingBuf<(int,int)> = RingBuf::new();
    buf.push_back((-19,0));
    visited.insert((0i,0i));
    while !buf.is_empty(){
        let current: (int,int) = match buf.pop_front() {Some(x) => x,None => (0,0)};
        for neighbour in neighbours(current).iter(){
            if !visited.contains(neighbour) && digitSum(neighbour.0,neighbour.1) < 20{
                visited.insert(*neighbour);
                buf.push_back(*neighbour);
            }
        }
    }
    println!("{}",visited.len());
}

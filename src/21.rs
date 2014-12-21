use std::io::BufferedReader;
use std::io::File;
use std::collections::BinaryHeap;
use std::vec::Vec;

fn ascii_sum(word: String) -> int{
    let mut sum = 0i;
    for char in word.chars() {
        sum += char as int;
    }
    sum
}

fn main(){
    let path = Path::new("words.txt");
    let mut heap:BinaryHeap<int> = BinaryHeap::with_capacity(42u);
    let mut file = BufferedReader::new(File::open(&path));
    for line in file.lines() {
        heap.push(ascii_sum(line.unwrap())-10);
    }
    let mut sum:int = 0;
    for i in range(0,42i){
        sum += match heap.pop() {Some(x)=>x,None=>0};
    }
    println!("{}",sum);
}

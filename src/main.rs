fn add(a: i32, b: i32) -> i32 {
    a + b
}

fn main() {
    println!("Hello, world! 3 + 4 = {}", add(3, 4));
}

#[cfg(test)]
mod test {
    use super::*;

    #[test]
    fn test_add() {
        assert_eq!(add(1, 2), 3);
    }
}

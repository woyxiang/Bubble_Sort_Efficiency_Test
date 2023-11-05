use std::time::Instant;

fn bubble_sort(unsorted: &mut [i32]) {
    let length = unsorted.len();
    for i in 0..length {
        for j in i..length {
            if unsorted[i] > unsorted[j] {
                unsorted.swap(i, j);
            }
        }
    }
}

fn main() {
    let start_time = Instant::now();

    let mut array: [i32; 10000] = [0; 10000];
    let inside_int = 1000000;
    for i in 0..10000 {
        array[i] = inside_int - i as i32;
    }

    bubble_sort(&mut array);

    let stop_time = start_time.elapsed();
    println!("{:?} ms", stop_time.as_millis());
}

import UIKit

//INSERTION SORT


//other sorting algorithm: O(n ^ 2)- quadratic , O(n log n) - logarithmic is faster than quadratic like mergesort and quick sort
//worst case runtime is the same as bubbleSort runtime: O(n ^ 2) but better than bubble sort in a partially sorted array
//space O(1) because it sorts in place
//slightly more performant than bubblesort
//swift's sorting algorithm (hybrid algorithm) is n log n, uses insertion sort on small, partially sorted arrays
//resources https://github.com/raywenderlich/swift-algorithm-club


func insertionSort(_ arr: inout [Int]) {
    //to protect against nil or emptiness it doesn't decrease the runtime and helps us if there are not enough numbers
    guard arr.count > 2 else {return}
    for current in 1..<arr.count {
        for j in (1...current).reversed() {
            if arr[j] < arr[j - 1] {
              //swap - using the built-in property swapAt
                arr.swapAt(j, j - 1)
            } else { //left side of array is sorted
               // break //continue to the outer loop or you can say
                //continue to outerloop
            }
        }
    }
}

var list = [4, 5, 9, -2]
insertionSort(&list) //as we change the inner array it manipulates it but it can also manipulate any outside array as well due to the inout function
print(list)

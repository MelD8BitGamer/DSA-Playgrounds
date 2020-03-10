import UIKit

//Qucik Sort implementation using Lomuto's Partitioning alghorithm
//Quick Sort uses a pivot in our example we use the last element as the pivot. Using this pivot we split the array to the left of the pivot and to the right of the pivot
//example: 10, -9, 0 , -11 (pivot is 13), 80
//quick sort uses divide anf conquer approach to solve the sorting algorithm, divide and conquer ios splitting the problem in half on every iteration (or recursive call)
//runtime: O(n log n)
//implement Lomoto's partitioning

//this returns a new index which we will usde as the pivot to partition the array to the left anf right side of the arry
func lomutoPartition(_ arr: inout [Int], low: Int, high: Int) -> Int {
    let pivot = arr[high] //using the last element in the array
    var i = low

    //iterate through the array using j variables as out marker
    for j in low..<high {
        if arr[j] <= pivot {
            //we need to swap and increment i
            arr.swapAt(i, j)
            i += 1
        }
    }
    arr.swapAt(i, high)
    return i
}
func quickSortLomuto(_ arr: inout [Int], low: Int, high: Int) {
    if low < high {
        //get a new pivot
        let pivot = lomutoPartition(&arr, low: low, high: high)
        //recursive calls
        
        //left array
        quickSortLomuto(&arr, low: low, high: pivot - 1)
        
        //right array
        quickSortLomuto(&arr, low: pivot + 1, high: high)
        
    }
}

var list  = [80, 10, -9, 0, -11, 13]
quickSortLomuto(&list, low: 0, high: list.count - 1)
print(list)

//bubblesort because our array is a constant we MUST use inout function so that we dont get errors for mutation git
func bubbleSort(_ arr: inout [Int]) {
    for _ in 0..<arr.count {
        for j in 1..<arr.count {
            if arr[j] < arr[j - 1] {
                arr.swapAt(j, j - 1)
            }
        }
    }
}
 var bubblist = [80, 10, -9, 0, -11, 13,90, -8, 1, -90, 78,100, 90, -8, 1, -90, 80, 10, -9, 0, -11, 13]
bubbleSort(&bubblist)
print(bubblist)

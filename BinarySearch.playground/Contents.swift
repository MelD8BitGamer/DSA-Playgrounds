import UIKit

//Binary Search - implemented using recursion
//it is a searching algorithm to search for a given value
//runtime - O(log n) - as an array is dividing on each pass

//array MUST be sorted
//array is divided in halves to find the middle index
//based on the current value at the middle index we either continue searchng to the left of thw middle index or continue searching to the right of the middle index for the value
//we use divide and conquer and implement the steps above until we find our value or do not find a value when the steps have been exhausted

//implementing binary search using recursion and it has a n upper range or lower range( low an high)
func binarySearch<T: Comparable>(_ arr: [T], searchKey: T, range: Range<Int>) -> Int? {
    //check to ensure that the upperbound is higher than the lower bound
   // if 5 > 0 return nil
    //[4,5,8] lowerbound 0, upperbound is 2
    if range.lowerBound >= range.upperBound {
    return nil
    }
   //calculate middle index
    let middleIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
    
    //3 checks
    //1. is the middle index value equal to search key (if it is we have found the search key)
    //2. if the value at the middle index is greater than the search key, we will now look at the left side of the middle index
    //3. i fgthe value at the middle index ixd less than the search value , we look to the right
    
    //check 1
    if arr[middleIndex] == searchKey {
        return middleIndex
    }
    
    //check 2
    else if arr[middleIndex] > searchKey { //left side of middle index
        return binarySearch(arr, searchKey: searchKey, range: range.lowerBound..<middleIndex)
    }
        //check 3
    else if arr[middleIndex] < searchKey { //look at the right side of the middle index
        return binarySearch(arr, searchKey: searchKey, range: middleIndex + 1..<range.upperBound)
    }
    //did not find the value
    return nil
}

let sortedList = [-99, 2, 6, 9, 13, 34, 99, 101]

let index = binarySearch(sortedList, searchKey: 99, range: (0..<sortedList.count))
print("found index \(index ?? -999)") //6
let characters = ["a", "b", "c", "y"]
let charIndex = binarySearch(characters, searchKey: "y", range: (0..<characters.count))
print("found char index: \(charIndex ?? -1)")


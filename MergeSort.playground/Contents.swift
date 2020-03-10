import UIKit


//MERGESORT

//worst, average and best runtime scenario is O(n log n)
//it uses divide and conquer, splits the array in 2 using the middle index and uses recursion until a base case count is greater than 1, then it merges the individual arrays back together while sorting

func mergeSort<T: Comparable>(_ arr: [T]) -> [T] {
    //base case count is greater than 1
    guard arr.count > 1 else { return arr }
    let middleIndex = arr.count / 2
    //left array includes begining array up to but not including the middle index
    let leftArray = mergeSort(Array(arr[..<middleIndex]))
    let rightArray = mergeSort(Array(arr[middleIndex...]))
    return merge(leftArray, rightArray)
    }
//now we are at the base cases so we need to write a helper function that combine 2 sorted arrays
func merge<T: Comparable>(_ leftArray: [T], _ rightArray: [T]) -> [T] {
    var leftIndex = 0
    var rightIndex = 0
    var resultsArray = [T]()
    
    while leftIndex < leftArray.count && rightIndex < rightArray.count {
        let leftElement = leftArray[leftIndex]
        let rightElement = rightArray[rightIndex]
        
        //compare
        if leftElement < rightElement {
            resultsArray.append(leftElement)
            leftIndex += 1
        } else if leftElement > rightElement {
            resultsArray.append(rightElement)
            rightIndex += 1
        } else {
            resultsArray.append(leftElement)
            leftIndex += 1
            resultsArray.append(rightElement)
            rightIndex += 1
        }
    }
    //out here append elements remaining in left, and right arrays
    if leftIndex < leftArray.count {
        resultsArray.append(contentsOf: leftArray[leftIndex...])
    }
    if rightIndex < rightArray.count {
        resultsArray.append(contentsOf: rightArray[rightIndex...])
    }
    return resultsArray
    
}
 let list = [12, 8, 29, -100, 0, 234]
let sortedList = mergeSort(list)
print(sortedList)

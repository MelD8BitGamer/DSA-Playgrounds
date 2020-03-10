import UIKit

//BUBBLESORT
//it is a sorting algorithm, it is the worst runtime O(n^2) - quadratic (this is considered as the worst sorting algorithm)
//space complexity:O(1) - constant - sorts in place think of an in out function,
//if we have reference to the array and could change the array outside of the function and that is what INOUT does
//resources https://pursuit-core.slack.com/files/UNGN7MQG5/FUNFKB0G3/7dqvv1_7vw2suqg99-3hepflsfp2czxuqtorfr7gqqg.gif.mp4

func bubbleSort(_ arr: inout [Int]) {// inout indicates in place
//manipulation
    
    for _ in 0..<arr.count { //the runtime at this point O(n)
        for j in 1..<arr.count { //this runtime is O(n) so n * n is O(n2)
            if arr[j] < arr[j - 1] { //checking to see if the place value j is less than the one before
                //swap implement swap without using the built in swap function
                let temp = arr[j] //saved the value at arr[j] before overwriting
                arr[j] = arr[j - 1]
                arr[j - 1] = temp
            }
        }
    }
}
var list = [10, 2, -8, 4]
bubbleSort(&list)
print(list)//expected result [-8, 2, 4, 10]

## Sorting Practice 

<pre> 
1. Write a function that takes two sorted arrays and merges them into a single array.
 
 input: [1, 3, 6, 9, 11] and [5, 8, 21, 25]
 
 output: [1, 3, 5, 6, 8, 9, 11, 21, 25]
</pre> 

<details>
  <summary>Solution</summary> 
  
  ```swift 
  func mergeArrays(_ arr1: [Int], _ arr2: [Int]) -> [Int] {
  var resultArray = [Int]()
  var leftIndex = 0
  var rightIndex = 0
  while leftIndex < arr1.count && rightIndex < arr2.count {
    let leftElement = arr1[leftIndex]
    let rightElement = arr2[rightIndex]
    if leftElement < rightElement {
      resultArray.append(arr1[leftIndex])
      leftIndex += 1
    } else if leftElement > rightElement {
      resultArray.append(arr2[rightIndex])
      rightIndex += 1
    } else {
      resultArray.append(arr1[leftIndex])
      leftIndex += 1
      resultArray.append(arr2[rightIndex])
      rightIndex += 1
    }
  }
  if leftIndex < arr1.count {
    resultArray.append(contentsOf: arr1[leftIndex...])
  }
  if rightIndex < arr2.count {
    resultArray.append(contentsOf: arr2[rightIndex...])
  }
  return resultArray
}
  ```
  
</details> 

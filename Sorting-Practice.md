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

</br> 

<pre> 
2. Sort a linked list using insertion sort.
 
Algorithm of Insertion Sort:

Insertion sort iterates, consuming one input element each repetition, and growing a sorted output list.
At each iteration, insertion sort removes one element from the input data, finds the location it belongs within the sorted list, and inserts it there.
It repeats until no input elements remain.

Example 1:

Input: 4->2->1->3
Output: 1->2->3->4
</pre> 

<details> 
 <summary>Solution</summary>
 
 ```swift 
 public class ListNode: Equatable {
  public var val: Int
  public var next: ListNode?
  public init(_ val: Int) {
    self.val = val
    self.next = nil
  }
  static public func ==(lhs: ListNode, rhs: ListNode) -> Bool {
    return lhs.next == rhs.next && lhs.val == rhs.val
  }
}

extension ListNode: CustomStringConvertible {
  public var description: String {
    guard let _ = self.next else { return "\(val) -> nil" }
    var result = "\(val) -> "
    var currentNode = self.next
    while let next = currentNode {
      result += "\(next.val) -> "
      currentNode = currentNode?.next
    }
    return result + "nil"
  }
}

func insertionSortList(_ head: ListNode?) -> ListNode? {
  guard let _ = head else { return nil }
  var currentNode = head
  while let _ = currentNode {
    var node = head
    while node != currentNode {
      if currentNode!.val < node!.val {
        let temp = currentNode!.val
        currentNode?.val = node!.val
        node?.val = temp
      } 
      node = node?.next
    }
    currentNode = currentNode?.next // iterate through the list
  }
  return head
}
 ```
 
</details> 

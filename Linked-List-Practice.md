## Linked List Practice 

<pre> 
1. Using the doubly linked below. Print the elements of the linked list in reverse. 

class LLNode<T> {
  var next: LLNode?
  var previous: LLNode?
  var value: T
  init(_ value: T) {
    self.value = value
    self.next = nil
  }
}

extension LLNode: CustomStringConvertible {
  var description: String {
    guard let _ = next else {  return "[\(value)]" }
    var currentNode = next
    var result = "\(value) -> "
    while let node = currentNode {
      result += node.next != nil ? "\(node.value) -> " : "\(node.value) -> nil"
      currentNode = currentNode?.next
    }
    return result
  }
}

let threeNode = LLNode(3)
let eightNode = LLNode(8)
let fourNode = LLNode(4)
let oneNode = LLNode(1)

threeNode.next = eightNode
eightNode.next = fourNode
fourNode.next = oneNode

oneNode.previous = fourNode
fourNode.previous = eightNode
eightNode.previous = threeNode

Original list: 3 -> 8 -> 4 -> 1 -> nil 

Reverse list: 1 -> 4 -> 8 -> 3 -> nil 

</pre> 

</br> 

<pre> 

2. Given the head node of a singly linked list, swap each pair of nodes and return the head. 
If there is a last odd node leave it in place.


Sample

| Input | Output |
| --- | --- |
| 1 -> 2 -> 3 -> 4 -> 5 | 2 -> 1 -> 4 -> 3 -> 5 |
</pre> 

</br> 


<pre> 
3. Write a function to remove duplicates from an unsorted linked list. 
</pre> 

</br> 

<pre> 
4. Create a function that finds the second largest number in a Linked List of Ints.

1 -> 2 -> 9 -> 4 -> 5    answer: 9
</pre> 



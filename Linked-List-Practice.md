## Linked List Practice 

<pre> 
1. Using the doubly linked below. Print the elements of the list in reverse. 

Original list: 3 -> 8 -> 4 -> 1 -> nil 

Reverse list: 1 -> 4 -> 8 -> 3 -> nil 

Function definition: 
func printReverse<T>(_ list: LLNode<T>?, visit: (LLNode<T>?) -> Void) {
  // code here
}

printReverse(threeNode) { node in
  // print here
}

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

print(threeNode)
</pre> 

<details> 
  <summary>Solution</summary> 
  
```swift
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

func printReverse<T>(_ list: LLNode<T>?, visit: (LLNode<T>?) -> Void) {
  guard let _ = list else { return }
  printReverse(list?.next, visit: visit)
  visit(list)
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

print(threeNode)

printReverse(threeNode) { node in
  if let _ = node?.previous {
    print("\(node!.value) -> ", terminator: "")
  } else {
    print("\(node!.value) -> nil")
  }
}
```
  
</details> 

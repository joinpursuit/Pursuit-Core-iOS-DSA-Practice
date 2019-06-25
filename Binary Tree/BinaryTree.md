## Binary Tree 

## Objectives: 

 - what is a binary tree?
 - common types of binary trees: full, complete, perfect [reading](https://www.geeksforgeeks.org/binary-tree-set-3-types-of-binary-tree/)    
 - implement a binary node
 - implement in-order traversal
 - implement pre-order traversal
 - implement post-order traversal

Binary Tree: A tree whose elements have at most 2 children is called a binary tree. Since each element in a binary tree can have only 2 children, we typically name them the left and right child.
 
                  10
                /   \
              2      5
            /  \    / \
          4    9   7   11
 
 
 - in-order traversal: 4, 2, 9, 10, 7, 5, 11
 - pre-order traversal: 10, 2, 4, 9, 5, 7, 11
 - post-order traversal: 4, 9, 2, 7, 11, 5, 10
 
 ![binary tree traversals](https://github.com/joinpursuit/Pursuit-Core-iOS-DSA-Practice/blob/master/Binary%20Tree/Images/binary-tree-traversals.jpg)
 
 ## Readings
 
 [Ray Wenderlich - Binary Tree](https://github.com/raywenderlich/swift-algorithm-club/tree/master/Binary%20Tree)  


```swift
class BinaryTreeNode<T> {
  var value: T
  var leftChild: BinaryTreeNode?
  var rightChild: BinaryTreeNode?
  
  init(value: T) {
    self.value = value
  }
  
  // the left subtree is visited recursively
  // followed by the node itself
  // the right subtree is visited recursively
  public func inOrderTraversal(visit: (BinaryTreeNode) -> Void) {
    leftChild?.inOrderTraversal(visit: visit)
    visit(self)
    rightChild?.inOrderTraversal(visit: visit)
  }
  
  // the current node is visited first
  // then left subtree is visited recursively
  // followed by the right subtree
  public func preOrderTraversal(visit: (BinaryTreeNode) -> Void) {
    visit(self)
    leftChild?.preOrderTraversal(visit: visit)
    rightChild?.preOrderTraversal(visit: visit)
  }
  
  // left subtree is visited recursively
  // the right subtree is visited recursively
  // then the current node is visited
  public func postOrderTraversal(visit: (BinaryTreeNode) -> Void) {
    leftChild?.postOrderTraversal(visit: visit)
    rightChild?.postOrderTraversal(visit: visit)
    visit(self)
  }
}

// Test the Binary Tree
let tenNode = BinaryTreeNode<Int>(value: 10)
let twoNode = BinaryTreeNode<Int>(value: 2)
let fiveNode = BinaryTreeNode<Int>(value: 5)
tenNode.leftChild = twoNode
tenNode.rightChild = fiveNode

let fourNode = BinaryTreeNode<Int>(value: 4)
let nineNode = BinaryTreeNode<Int>(value: 9)
twoNode.leftChild = fourNode
twoNode.rightChild = nineNode

let sevenNode = BinaryTreeNode<Int>(value: 7)
let elevenNode = BinaryTreeNode<Int>(value: 11)
fiveNode.leftChild = sevenNode
fiveNode.rightChild = elevenNode

print("in-order travversal")
tenNode.inOrderTraversal { (node) in
  print(node.value, terminator: " ") // 4 2 9 10 7 5 11
}
print("\n")

print("pre-order travversal")
tenNode.preOrderTraversal { (node) in
  print(node.value, terminator: " ") // 10 2 4 9 5 7 11
}
print("\n")

print("post-order travversal")
tenNode.postOrderTraversal { (node) in
  print(node.value, terminator: " ") // 4 9 2 7 11 5 10
}
```

#### Exercise

Write a function to find the height of the tree


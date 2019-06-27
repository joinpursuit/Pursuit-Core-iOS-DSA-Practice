<pre> 
Height of Binary Tree.
 The height of a binary tree is the number of edges between the tree's root and its furthest leaf. For example,
 the following binary tree is of height 2
 
                      4
                    /   \
                  2      6
                /   \   / \
              1     3  5   7
 
 Complete the function getHeight() that takes a root tree node and returns the height of the following tree:
 
                      3
                    /   \
                  2      5
                /       / \
               1       4   6
                            \
                             7
 
 func getHeight<T>(node: BinaryNode<T>?) -> Int {
   // code here
 }
 
 
 // BinaryNode class:
 class BinaryNode<T> {
   var value: T
   var leftChild: BinaryNode?
   var rightChild: BinaryNode?
   init(_ value: T) {
     self.value = value
   }
 }
</pre>

```swift 
func getHeight<T>(node: BinaryNode<T>?) -> Int {
  // code here
}
```

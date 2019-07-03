## DSA Assessment 3

### Problem 1
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

</br> 

### Problem 2 
<pre> 
Return the paths of a Binary Tree.
 
 
                1
              /   \
             2     3
            / \   / \
           3   6 3   1
          /         / \
         2         5   6

Output: [[1, 2, 3, 2], [1, 2, 6], [1, 3, 3], [1, 3, 1, 5], [1, 3, 1, 6]]
</pre> 

</br> 

### Problem 3
<pre> 
Validate BST.
Implement a function to check if a binary tree is a binary search tree.
 
Example 1. 
          8
        /   \
      3      11
     / \    /  \
    1   4  9    23
    
Output: true 


Example 2. 
          11
         /  \
        23   5
 
Output: false 
</pre>

</br> 

### Problem 4
<pre> 
You are given pointer to the root of the binary search tree and two values v1 and v2.
You need to return the lowest common ancestor (LCA) of v1 and v2 in the binary search tree.


             4
           /   \
         2      7
        / \    /
       1  3   6

Input:
v1 = 1 and v2 = 7

Output:
4
</pre> 

</br> 

### Problem 5

<pre> 
Implement Bubble Sort and state the runtime and space complexity. 
</pre>

</br> 

### Problem 6

<pre> 
Implement Quicksort and state the runtime and space complexity. 
</pre>

</br>

### Problem 7

<pre> 
Implement Merge Sort and give the runtime and space complexity. 
</pre>

### Problem 8

<pre> 
Implement Binary Search 
</pre>


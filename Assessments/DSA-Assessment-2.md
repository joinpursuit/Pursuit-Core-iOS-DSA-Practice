# DSA Assessment 2

### Problem 1 

**Rearrange the runtime complexities in the correct order from faster runtime to slowest** 

O(1) -> O(n!) -> O(n ^ 2) -> O(n) -> O(log n) -> O(n log n) -> O(2 ^ n)

<details> 
  <summary>Solution</summary> 
  
  O(1) -> O(log n) -> O(n) -> O(n log n) -> O(2 ^ n) -> O(n!)
  
</details> 

</br>

### Problem 2 

<pre>
Anagram: a word, phrase, or name formed by rearranging the letters of another, such as cinema, formed from iceman.

Write a function that takes two Strings and returns true or false if it's an Anagram

Input: "cinema" "iceman" 

Output: true 
</pre> 

### Problem 3

<pre> 
Given an array of Ints, find the two numbers that when multiplied together give the greatest product, and return that product.

 (Links to an external site.)
Input: [1, 2, 7, 3, 9, 5]

Output: 63
</pre> 

</br>


### Problem 4 

<pre> 
Given two sorted arrays, write a function that returns a single sorted list with all the elements from the inputs. Your solution must work in O(n) time.

 (Links to an external site.)
Input: 

[3, 4, 6, 10, 11, 15] 

[1, 5, 8, 12, 14, 19, 31]

 

Output: 

[1, 3, 4, 5, 6, 8, 10, 11, 12, 14, 15, 19, 31]
</pre>

</br>

### Problem 5 

<pre> 
A bracket is considered to be any one of the following characters: (, ), {, }, [, or ].
 
 Two brackets are considered to be a matched pair if the an opening bracket (i.e., (, [, or {) occurs 
 to the left of a closing bracket (i.e., ), ], or }) of the exact same type. There are three types of 
 matched pairs of brackets: [], {}, and ().
 
 A matching pair of brackets is not balanced if the set of brackets it encloses are not matched. 
 For example, {[(])} is not balanced because the contents in between { and } are not balanced. 
 The pair of square brackets encloses a single, unbalanced opening bracket, (, and the pair of 
 parentheses encloses a single, unbalanced closing square bracket, ].
 
 By this logic, we say a sequence of brackets is balanced if the following conditions are met:
 
 It contains no unmatched brackets.
 The subset of brackets enclosed within the confines of a matched pair of brackets is also a matched 
 pair of brackets.
 Given n strings of brackets, determine whether each sequence of brackets is balanced. If a string 
 is balanced, return YES. Otherwise, return NO.
 
 Input:
 {[()]}
 {[(])}
 {{[[(())]]}}
 
 Output:
 YES
 NO
 YES
</pre> 

</br>

### Problem 6

<pre> 
Using the doubly linked below. Print the elements of the linked list in reverse.

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
    guard let _ = next else { return "[\(value)]" }
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

### Problem 7

<pre> 
Write a recursive function pow that takes two numbers x and y as input and returns 
x to the power y.  Do not use for/while loops

Sample Input: 3 ^ 4

Sample Output: 81
</pre> 

### Problem 8

<pre> 
Find the Kth most Frequent Number in an Array.
 
Example:
 
let arr = [1, 2, 3, 2, 1, 2, 2, 2, 3, 3]
k = 2
Result: 3
 
Because '3' is the second most occurring element.
</pre> 

</br>

### Problem 9

<pre> 
1) Implement a Queue using an Array

2) Create an instance of the Queue and populate it with integers and write a function called smallestElement() that returns the smallest element in a given Queue. 

Input: [8, 1, -23, 11]

Output: -23

Sample Test: 

var numbers = Queue<Int>()

numbers.enqueue(8)

numbers.enqueue(1)

numbers.enqueue(-23)

numbers.enqueue(11)

print(numbers)  // [8, 1, -23, 11]

smallestElement(numbers) // -23
</pre> 

</br>

### Problem 10

<pre> 
Explain how hashtables work internally. How is hashcode generated and what will happen to the hash code when 2 values are same.
</pre> 

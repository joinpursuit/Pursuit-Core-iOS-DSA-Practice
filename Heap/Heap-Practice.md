## Heap Practice 

#### Problem 1 

Building Heap from Array

<pre> 
Given an array of N elements. The task is to build a Binary Heap from the given array. The heap can be either Max Heap or Min Heap.

Example
Input: arr = [4, 10, 3, 5, 1]
Output: Corresponding Max-Heap:
       10
     /   \
    5     3
   /  \
  4    1

Input: arr = [1, 3, 5, 4, 6, 13, 10, 9, 8, 15, 17]
Output: Corresponding Max-Heap:
                 17
              /      \
            15         13
          /    \      /  \
         9      6    5   10
        / \    /  \
       4   8  3    1
</pre>

#### Problem 2 

Given a Binary Heap and an element present in the given Heap. The task is to delete an element from this Heap.

<pre> 
The standard deletion operation on Heap is to delete the element present at the root node of the Heap. That is if it is a Max Heap, the standard deletion operation will delete the maximum element and if it is a Min heap, it will delete the minimum element.

Process of Deletion:
Since deleting an element at any intermediary position in the heap can be costly, so we can simply replace the element to be deleted by the last element and delete the last element of the Heap.

Replace the root or element to be deleted by the last element.
Delete the last element from the Heap.
Since, the last element is now placed at the position of the root node. So, it may not follow the heap property. Therefore, heapify the last node placed at the position of root.

Suppose the Heap is a Max-Heap as:
      10
    /    \
   5      3
  / \
 2   4

The element to be deleted is root, i.e. 10.

Process:
The last element is 4.

Step 1: Replace the last element with root, and delete it.
      4
    /    \
   5      3
  / 
 2   

Step 2: Heapify root.
Final Heap:
      5
    /    \
   4      3
  / 
 2 
</pre> 

#### Problem 3

Minimum element in a max heap

Given a max heap, find the minimum element present in the heap.

<pre> 
Input :     100
           /    \ 
          75     50 
         /  \    / \
       55   10  2  40
Output : 2

Input :     20
           /   \ 
          4    18
Output : 4
</pre> 

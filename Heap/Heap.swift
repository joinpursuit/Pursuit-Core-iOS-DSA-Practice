import Foundation

/* Heap: a binary tree inside and array, sorted either via a max-heap or min-heap
 the heap property keeps the structure valid either through shift up or shift down
*/

struct Heap<T: Equatable> {
  
  // elements in the Heap
  private var elements = [T]()

  /*
   max-heap: parent node is larger than any child node
   min-heap: parent node is smaller than any child node
   
         max heap                   min heap
         =========                 =========
            18                         2
          /    \                    /    \
         12    18                  8      11
        /  \                     / \      /
       10  7  20                12 20   14
   
   */

  // how do we know what type of Heap we are building: is it a min or max heap?
  // we use a soring closure to determine heap type
  // e.g max-heap >
  // e.g min-heap <
  private var sortingCriteria: (T, T) -> Bool

  public var count: Int {
    return elements.count
  }

  public var isEmpty: Bool {
    return elements.isEmpty
  }

  public var peek: T? {
    return elements.first
  }

  init(sortingCriteria: @escaping (T, T) -> Bool) {
    self.sortingCriteria = sortingCriteria
  }

  // Heapify initializer:
  // takes in an unsorted array and creates a min-heap or max-heap
  // based on sorting closure passed in e.g < or >
  init(_ arr: [T], sortingCriteria: @escaping (T, T) -> Bool) {
    self.sortingCriteria = sortingCriteria
    heapify(arr)
  }

  private mutating func heapify(_ arr: [T]) {
    elements = arr
    for index in stride(from: (elements.count / 2) - 1, through: 0, by: -1) {
      shiftDown(index)
    }
  }

  // main functions for finding a elements relationship indices
  // find parent index
  // find left child index and
  // find right child index
  private func parentIndex(_ index: Int) -> Int {
    return (index - 1) / 2
  }

  private func leftChildIndex(_ index: Int) -> Int {
    return 2 * index + 1
  }

  private func rightChildIndex(_ index: Int) -> Int  {
    return 2 * index + 2
  }

  public mutating func insert(_ value: T) { // insert(value: 4), _ option gets this insert(8)
    // rule 1: append value to array
    elements.append(value)
    
    // rule 2: fix heap property by calling shiftUp(index)
    shiftUp(elements.count - 1)
  }

  private mutating func shiftUp(_ index: Int) {
    let child = elements[index]
    var childIndex = index
    var parentIndex = self.parentIndex(childIndex)
    while childIndex > 0 && sortingCriteria(child, elements[parentIndex]) {
      elements[childIndex] = elements[parentIndex] // overwrite child value with parent's value
      childIndex = parentIndex // walking up the tree
      parentIndex = self.parentIndex(childIndex) // get parent index of child
    }
    elements[childIndex] = child // set root value equal to e.g 20
  }

  private mutating func shiftDown(_ index: Int) {
    shiftDown(fromIndex: index, to: elements.count)
  }

  private mutating func shiftDown(fromIndex index: Int, to endIndex: Int) {
    let leftChildIndex = self.leftChildIndex(index)
    let rightChildIndex = leftChildIndex + 1
    var first = index // first starts at the and is used to keep track as we walk down the tree
    if leftChildIndex < endIndex && sortingCriteria(elements[leftChildIndex], elements[first]) {
      first = leftChildIndex
    }
    if rightChildIndex < endIndex && sortingCriteria(elements[rightChildIndex], elements[first]) {
      first = rightChildIndex
    }
    if first == index { return }
    elements.swapAt(first, index)
    shiftDown(fromIndex: first, to: endIndex) // calling recursively until Heap is intact
  }

  public mutating func remove() -> T? {
    // check for nil
    guard !elements.isEmpty else { return nil }
    
    // case in which there is only 1 element in the Heap
    if elements.count == 1 {
      return elements.removeFirst()
    }
    
    let value = elements[0] // save removal value to return
    elements[0] = elements.removeLast() // overwrite root with last value and remove last
    shiftDown(0) // sift the Heap down from the root while maintaining the Heap Property
    return value
  }


  // ======================================================================================
  //                        functions outside of class demo
  // ======================================================================================


  // here we can remove an arbitrary element at a particular given index from the heap
  // previously we saw remove() where it momve the root element
  public mutating func remove(atIndex index: Int) -> T? {
    guard !elements.isEmpty, index >= 0 else { return nil }
    
    let size = elements.count - 1 // size here is the valid indices in the Heap
    
    if index <= size {
      // we sway the last element with the element at the given index
      // this allows up to remove the last element without affected the Heap structure
      elements.swapAt(index, size)
      
      // we first shift down the Heap to fix any unsorted sorted elements
      shiftDown(fromIndex: index, to: size)
      
      // then we shift up to fix from the index to the root of the Heap
      shiftUp(index)
    }
    
    // finally we remove and return the last element
    return elements.removeLast()
  }

  // for replace we are performing two operations
  // 1. we remove the element at the given index
  // 2. we insert the the new given value
  public mutating func replace(index: Int, withValue value: T) {
    guard !elements.isEmpty, index >= 0 else { return }
    remove(atIndex: index)
    insert(value)
  }
  
  // we now need to make our Heap types conform to Equatable in order to apple the
  // binary == equatable operator to find the index of an element
  public mutating func index(_ value: T) -> Int? {
    return elements.firstIndex { $0 == value }
  }
}

var list = Heap<Int>(sortingCriteria: >) // > is max-heap, < min-heap
list.insert(18)
list.insert(12)
list.insert(11)
list.insert(10)
list.insert(7)

print(list)

list.insert(83)

print(list)

list.remove()

print(list)

var newHeap = Heap<Int>([8, 10, -3, 11, 23], sortingCriteria: >)
print("heapify array: \(newHeap)")


// ======================================================================================
//                        Testing functions outside of class demo
// ======================================================================================


// testing remove(atIndex: )
// here we can remove an arbitrary element at a particular given index from the heap
// previously we saw remove() where it momve the root element
newHeap.remove(atIndex: 3)
print(newHeap)


// testing replace(index: withValue: )
newHeap.replace(index: 2, withValue: 17)
print(newHeap)

// testing the find index for a given element function
if let foundIndex = newHeap.index(11) {
  print("found value at index: \(foundIndex)")
} else {
  print("value NOT found in Heap")
}

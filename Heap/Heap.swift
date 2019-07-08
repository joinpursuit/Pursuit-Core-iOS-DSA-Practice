import Foundation

/* Heap: a binary tree inside and array, sorted either via a max-heap or min-heap
         the heap property keeps the structure valid either through shift up or shift down
*/

struct Heap<T> {
  
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



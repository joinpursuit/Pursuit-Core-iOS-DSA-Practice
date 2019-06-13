## Stack Implementation using an Array and Linked List

## Array Implementation 

```swift
struct StackArray<T> {
  private var elements = [T]()
  
  // count
  public var count: Int {
    return elements.count
  }
  
  // isEmpty
  public var isEmpty: Bool {
    return elements.isEmpty
  }
  
  // peek
  public var peek: T? {
    return elements.last
  }
  
  // push
  public mutating func push(_ element: T) {
    elements.append(element)
  }
  
  // pop
  public mutating func pop() -> T? {
    guard !elements.isEmpty else { return nil }
    return elements.removeLast()
  }
}

var names = StackArray<String>()
names.push("Matt")
names.push("Diego")
names.push("Li")

print(names)

print(names.peek ?? "empty")

names.pop()

print(names) // Matt, Diego
```

## Linked List Implementation 

#### Node

```swift 
// Node
class Node<T: Equatable>: Equatable {
  public var value: T
  public var next: Node<T>?
  weak public var prev: Node<T>?
  init(_ value: T) {
    self.value = value
  }
  static func==(lhs: Node<T>, rhs: Node<T>) -> Bool {
    return lhs.value == rhs.value && lhs.next == rhs.next
  }
}
```

#### Linked List

```swift
// Linked List
struct LinkedList<T: Equatable> {
  private var head: Node<T>?
  private var tail: Node<T>?
  
  public var first: Node<T>? {
    return head
  }
  
  public var last: Node<T>? {
    return tail
  }
  
  // https://www.natashatherobot.com/swift-magic-public-getter-private-setter/
  private (set) var count: Int = 0
  
  // append
  public mutating func append(_ value: T) {
    let newNode = Node(value)
    guard let last = tail else {
      head = newNode
      tail = newNode
      count += 1
      return
    }
    newNode.prev = last
    last.next = newNode
    tail = newNode
    count += 1
  }
  
  // removeLast
  public mutating func removeLast() -> T? {
    let value = tail?.value
    guard let _ = tail else { return nil }
    guard let prev = tail?.prev else {
      tail = nil
      head = nil
      count -= 1
      return value
    }
    prev.next = nil
    tail = prev
    count -= 1
    return value
  }
}

extension LinkedList: CustomStringConvertible {
  var description: String {
    guard let _ = head else { return "empty list" }
    var currentNode = head
    var result = ""
    while let node = currentNode {
      result += "\(node.value) -> "
      currentNode = currentNode?.next
    }
    return result + "nil"
  }
}

var nums = LinkedList<Int>()
nums.append(1)
nums.append(3)
nums.append(5)

print(nums)

nums.removeLast()

print(nums)

``` 

#### Stack Linked List

```swift
struct StackLL<T: Equatable> {
  private var elements = LinkedList<T>()
  
  public var count: Int {
    return elements.count
  }
  
  public var peek: T? {
    return elements.last?.value
  }
  
  public var isEmpty: Bool {
    return elements.first == nil
  }
  
  public mutating func push(_ element: T) {
    elements.append(element)
  }
  
  public mutating func pop() -> T? {
    guard !isEmpty else { return nil }
    return elements.removeLast()
  }
}

var cohort = StackLL<String>()
cohort.push("iOS")
cohort.push("web")
cohort.push("android")

print(cohort.count)  // 3

print(cohort)

cohort.pop()

print(cohort)

print(cohort.count)  // 2
```

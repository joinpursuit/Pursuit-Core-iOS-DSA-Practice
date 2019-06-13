## Stack Implementation

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

## DSA Assessment 1

## Question 1

### Can you explain big O notation and why it's important?

<details>
  <summary>Solution</summary>
```
Big O Notation tells you how your function's runtime and required memory scales with input. Using this you can estimate how performant your code will be and how to improve.
```
</details> 

## Question 2

### Please rank the following Big-O functions from fastest to slowest:

```
O(n), O(n log n), O(1), O(n^2), O(2^n)
```

<details>
  <summary>Solution</summary>

O(1), O(n), O(n log n), O(n^2), O(2^n)

</details> 

## Question 3

### What's the time complexity of the following function?

What is the time complexity, expressed in big O notation, of the below function? This function, scrambleString, accepts a string as an argument and returns that a string with the letters randomly rearranged.

```Swift
func scrambleString(input: String) -> String {
    var split = Array(input)
    
    for (index, letter) in split.enumerated() {
        let randomIndex = Int.random(in: 0...split.count-1)
        split[index] = split[randomIndex]
        split[randomIndex] = letter
    }
    
    return String(split)
}
```

**Answer:**
```
O(n)
```

## Question 4

### What's the time complexity of the following function?

What is the time complexity, expressed in big O notation, of the below function? This function, infiltrate, accepts an array as an argument. It creates an object called secretAgent and replaces a random index of an array with that object. It then returns the array.


```Swift
func infiltrate(array:[String]) -> [String] {
    var finalArray = array
    let secretCode = Int.random(in: 0...1000)
    let secretAgent = (codename: "Duchess", secret: secretCode)
    let randomIndex = Int.random(in: 0...array.count-1)
    finalArray[randomIndex] = secretAgent.codename
    return finalArray
}

```

**Answer:**
```
O(1)
```

## Question 5 

### Which sorting algorithm is faster: Bubble Sort or Merge Sort? 

**Answer:**
```
Merge Sort
```

## Question 6

### What is the name of the algorithm that is taking place in this diagram?

![alg](assets/alg1.png)

**Answer:**
```
Merge Sort
```

## Question 7

### You are building a phonebook online.  You want users to search for a user and find their associated phone number.  What data structure what be best to model your data and why?

**Answer:**
```
Dictionary / HashMap / HashTable.  
```

## Question 8

### Given the following code create a function that takes in a linked list and "pretty" prints the nodes

**Code:**
```Swift
public class Node<T> {
    var value: T
    var next: Node<T>?
    
    init(value: T) {
        self.value = value
    }
}


public class LinkedList<T> {
     var head: Node<T>?
    
    init(head: Node<T>) {
        self.head = head
    }
}
```

**Pretty Print Output:**
```
Console:
-> 1 -> 2 -> 3 -> nil
```

**Answer:**

```Swift
func prettyPrint<T>(list: LinkedList<T>) {
    var display = "-> "
    var currentNode = list.head
    while let node = currentNode {
        display += "\(node.value) -> "
        currentNode = node.next
    }
    display += "nil"
    print(display)
}
```

## Question 9

### Given the following code implement the Queue data structure with the following methods:

- enqueue(value) : Add new element to the end of the queue.
- dequeue() : Removes element from beginning of the queue and returns it.
- peek() : Returns the element from beginning of the queue without removing it.
- isEmpty() : Returns a boolean indicating if the queue is empty or not.

**Code:**

```Swift
class Queue<T> {
    private var arr: [T] = []
}
```

**Answer:**

```Swift
class Queue<T> {
    private var arr: [T] = []
    
    func enqueue(element: T) {
        arr.append(element)
    }
    
    func dequeue() -> T? {
        guard !arr.isEmpty else { return nil }
        return arr.remove(at: 0)
    }
    
    func peek() -> T? {
        return arr.first
    }
    
    func isEmpty() -> Bool {
        return arr.isEmpty
    }
}
```

## Question 10

### Describe the following:

- What is a Hash Function is?
- What is a flaw with the Hashing function below:

```Swift
func hash(key: String) -> Int {
    let unicodeScalars = key.unicodeScalars.map { Int($0.value) }
    return unicodeScalars.reduce(0, +)
}

hash(key: "Sally"); // 517
hash(key: "Dean");  // 376
hash(key: "Dane");  // 376
```

**Answer:**

```
A hash function is used to index the original value or key and then used later each time the data associated with the value or key is to be retrieved.

The major flaw with this Hash function is that Dean and Dane both give back the same value. So there would be a collision. 
```

## Question 11

### Name a LIFO data structure and explain how it works.

**Answer:**
```
A stack is a data structure in which elements use the Last-In-First-Out principle (LIFO). This structure limits data in the way that it can only be added to or removed from the top.
```

## Question 12

### What kind of data structure would perfectly organize the following data? Also explain why this kind of data structure would be useful.

![lol](assets/animals.png)

**Answer:**

```
A Tree. It is useful because it can be very easily used to determine some sort of hierarchy.
```

## Question 13

### Define a recursive function that returns the Nth fibonnaci number.

The fibonnaci sequence works like the following:
- Fibonacci sequence: [0, 1, 1, 2, 3, 5, 8, 13, 21] and fib(4), the result would be equal to 3

**Example:**

```Swift
print(fib(n: 1)) // 1
print(fib(n: 2)) // 1
print(fib(n: 3)) // 2
print(fib(n: 4)) // 3
```

**Answer:**

```Swift
func fibs(n: Int) -> Int {
    
    if n == 0 {
        return 0
    } else if n == 1{
        return 1
    }
    
    return fibs(n - 1) + fibs(n - 2)
}
```

## Question 14

### Define a recursive function that returns the factorial of a number.

If your number is 5, you would have:
```
5! = 5 * 4 * 3 * 2 * 1
```

The pattern:
```
0! = 1
1! = 1
2! = 2 * 1
3! = 3 * 2 * 1
4! = 4 * 3 * 2 * 1
5! = 5 * 4 * 3 * 2 * 1
```

**Answer:**

```Swift
func factorial(n: Int) -> Int {
    return n == 0 ? 1 : n * factorial(n — 1)
}
```

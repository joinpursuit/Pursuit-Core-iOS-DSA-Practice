## Big O Practice 

## [Big O Lesson](https://github.com/joinpursuit/Pursuit-Core-iOS/tree/master/units/unit02/lesson-06-big-o-notation)


1. What is the runtime?

```swift 
func prices(_ arr: [Int]) {
  var sum = 0
  var product = 1
  for i in 0..<arr.count { 
    sum += arr[i]
  }
  for i in 0..<arr.count {
    product *= arr[i]
  }
  print("sum: \(sum), product: \(product)")
}
```

<details> 
  <summary>Solution</summary> 
  runtime: O(n)
</details> 

</br> 

2. What is the runtime?
 
```swift
func scrambleString(_ inputString: String) -> String {
  let arr = inputString.shuffled()
  var newString = ""
  for char in arr { 
    newString += String(char)
  }
  return newString
}
```
<details> 
  <summary>Solution</summary> 
  runtime: O(n)
</details> 

</br> 

3. What is the runtime?

```swift
func printPairs(_ nums: [Int]) {
  for i in 0..<nums.count { 
    for j in 0..<nums.count { 
      print("\(nums[i]), \(nums[j])")
    }
  }
}
```

<details> 
  <summary>Solution</summary> 
  runtime: O(n ^ 2)
</details> 

</br> 

4. What is the runtime?

```swift
func printUnorderedPairs(_ nums: [Int]) {
  for i in 0..<nums.count {
    for j in i + 1..<nums.count { 
      print("\(nums[i]), \(nums[j]))")
    }
  }
}
```

<details> 
  <summary>Solution</summary> 
  runtime: O(n ^ 2)
</details> 

</br> 

 
5. What is the runtime?

```swift
func printUnorderedPairArrays(_ numsA: [Int], _ numsB: [Int]) {
  for i in 0..<numsA.count { 
    for j in 0..<numsB.count { 
      if numsA[i] < numsB[j] {
        print("\(numsA[i]), \(numsB[j])")
      }
    }
  }
}
``` 

<details> 
  <summary>Solution</summary> 
  runtime: O(n * m)
</details> 

</br> 
 
6. What is the runtime?

```swift
func printUnorderedPairAgain(_ numsA: [Int], _ numsB: [Int]) {
  for i in 0..<numsA.count { 
    for j in 0..<numsB.count { 
      for k in 0..<10 { // 1
        print("\(numsA[i]), \(numsB[j]), \(k)")
      }
    }
  }
}
``` 

<details> 
  <summary>Solution</summary> 
  runtime: O(n * m)
</details> 

</br> 
 
7. What is the runtime?

```swift
func reverseArray<Element>(_ arr: inout [Element]) where Element: Comparable {
  for i in 0..<arr.count / 2 { 
    let other = arr.count - i - 1
    let temp = arr[i]
    arr[i] = arr[other]
    arr[other] = temp
  }
}
``` 

<details> 
  <summary>Solution</summary> 
  runtime: O(n)
</details> 

</br> 

8. What is the runtime?

```swift
func product(num1: Int, num2: Int) -> Int {
  var sum = 0
  var i = 0
  while i < num2 {
    sum += num1
    i += 1
  }
  return sum
}
```

<details> 
  <summary>Solution</summary> 
  runtime: O(n)
</details> 

</br> 

9. What is the runtime?

```swift
func power(num1: Int, num2: Int) -> Int {
  if num2 < 0 { return 0 }
  else if num2 == 0 { return 1 }
  return num1 * power(num1: num1, num2: num2 - 1)
}
```

<details> 
  <summary>Solution</summary> 
  runtime: O(n)
</details> 

</br> 

10. What is the runtime?

```swift 
func mod(num1: Int, num2: Int) -> Int {
  if num2 <= 0 { return -1 }
  let div = num1 / num2
  return num1 - div * num2
}
```

<details> 
  <summary>Solution</summary> 
  runtime: O(1)
</details> 

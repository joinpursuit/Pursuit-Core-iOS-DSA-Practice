## Big O Practice 

<pre>
1.
What is the runtime?

func prices(_ arr: [Int]) {
  var sum = 0
  var product = 1
  for i in 0..<arr.count { // n
    sum += arr[i]
  }
  for i in 0..<arr.count { // n
    product *= arr[i]
  }
  print("sum: \(sum), product: \(product)")
}
</pre> 

<details> 
  <summary>Solution</summary> 
  
  runtime: O(n)
  
</details> 


<pre>
2.
What is the runtime?
 
func scrambleString(_ inputString: String) -> String {
  let arr = inputString.shuffled()
  var newString = ""
  for char in arr { // n
    newString += String(char)
  }
  return newString
}
</pre>

<details> 
  <summary>Solution</summary> 
  
  runtime: O(n)
  
</details> 


<pre>
3.
What is the runtime?

func printPairs(_ nums: [Int]) {
  for i in 0..<nums.count { // n
    for j in 0..<nums.count { // n
      print("\(nums[i]), \(nums[j])")
    }
  }
}
</pre>

<details> 
  <summary>Solution</summary> 
  
  runtime: O(n ^ 2)
  
</details> 


<pre> 
4.
What is the runtime?

func printUnorderedPairs(_ nums: [Int]) {
  for i in 0..<nums.count { // n
    for j in i + 1..<nums.count { // n
      print("\(nums[i]), \(nums[j]))")
    }
  }
}
</pre>

<details> 
  <summary>Solution</summary> 
  runtime: O(n ^ 2)
</details> 


<pre> 
5.
What is the runtime?

func printUnorderedPairArrays(_ numsA: [Int], _ numsB: [Int]) {
  for i in 0..<numsA.count { // n
    for j in 0..<numsB.count { // m
      if numsA[i] < numsB[j] {
        print("\(numsA[i]), \(numsB[j])")
      }
    }
  }
}
</pre> 

<details> 
  <summary>Solution</summary> 
  runtime: O(n * m)
</details> 


<pre> 
6.
What is the runtime?

func printUnorderedPairAgain(_ numsA: [Int], _ numsB: [Int]) {
  for i in 0..<numsA.count { // n
    for j in 0..<numsB.count { // m
      for k in 0..<10 { // 1
        print("\(numsA[i]), \(numsB[j]), \(k)")
      }
    }
  }
}
</pre> 

<details> 
  <summary>Solution</summary> 
  runtime: O(n * m)
</details> 


<pre> 
7.
What is the runtime?

func reverseArray<Element>(_ arr: inout [Element]) where Element: Comparable {
  for i in 0..<arr.count / 2 { // n
    let other = arr.count - i - 1
    let temp = arr[i]
    arr[i] = arr[other]
    arr[other] = temp
  }
}
</pre> 

<details> 
  <summary>Solution</summary> 
  runtime: O(n)
</details> 

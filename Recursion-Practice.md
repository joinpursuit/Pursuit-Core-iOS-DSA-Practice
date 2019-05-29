## Recursion Exercises

<pre> 
1. Find the factorial of a given number (review)
Factorial definition:

5 factorial = 5! = 5 * 4 * 3 * 2 * 1 = 120
</pre> 

<details> 
  <summary>Solution</summary> 
	
 ```swift 
 func factorial(num: Int) -> Int {
  if num == 1 { return 1 } // base case
  return num * factorial(num: num - 1) // recursive call 
}
factorial(num: 5) // 120
 ```
</details> 
	
</br>

<pre>
2. Print out all elements in an array recursively
e.g input = ["Bob", "Amanda", "Henry", "Charles"]
</pre> 

<details> 
  <summary>Solution</summary> 
	
 ```swift 
 func printElements(inputArray: [String], index: Int = 0) {
  if index == inputArray.count { return }
  print(inputArray[index])
  printElements(inputArray: inputArray, index: index + 1)
}
let input = ["Bob", "Amanda", "Henry", "Charles"]
printElements(inputArray: input)
 ```
</details> 
	
</br>

<pre> 
3. Concatenate all the elements in an array of Strings

Sample Input: ["Hi", "there", ",", " ", "user","!"]

Sample Output: "Hi there, user!"
</pre> 

<details> 
  <summary>Solution</summary> 
	
 ```swift 
 func concatenateElements(inputArray: [String], index: Int = 0, str: String = "") -> String {
  var str = str
  if index == inputArray.count { return str }
  if let _ = inputArray[index].rangeOfCharacter(from: CharacterSet.punctuationCharacters) {
    str = str.trimmingCharacters(in: CharacterSet.whitespaces)
    str += inputArray[index]
  } else {
    str += inputArray[index].replacingOccurrences(of: " ", with: "") + " "
  }
  return concatenateElements(inputArray: inputArray, index: index + 1, str: str)
}
let input = ["Hi", "there", ",", " ", "user","!"]
concatenateElements(inputArray: input)
 ```
</details> 
	
</br> 

<pre> 
4. Find the sum of all the numbers in an array

Sample Input: [3,6,1,3,2]

Sample Output: 15
</pre> 

<details> 
  <summary>Solution</summary> 
	
 ```swift 
 func sumOfAllElements(inputArray: [Int], index: Int = 0, sum: Int = 0) -> Int {
  var sum = sum
  if index == inputArray.count { return sum } // base case
  sum += inputArray[index]
  return sum + sumOfAllElements(inputArray: inputArray, index: index + 1) // recursive call
}
let input = [3,6,1,3,2]
sumOfAllElements(inputArray: input)
 ```
</details> 

</br>

<pre> 
5. Find the sum of all the even numbers in an array

Sample Input: [3,6,1,3,2, 10]

Sample Output: 18
</pre> 

<details> 
  <summary>Solution</summary> 
	
 ```swift 
 func sumOfEvenElements(inputArray: [Int], index: Int = 0, sum: Int = 0) -> Int {
  var sum = sum
  if index == inputArray.count { return sum }
  if inputArray[index] % 2 == 0 { sum += inputArray[index] }
  return sum + sumOfEvenElements(inputArray: inputArray, index: index + 1)
}
let input = [3,6,1,3,2, 10]
sumOfEvenElements(inputArray: input)
 ```
</details> 
	
</br>

<pre> 
6. Multiply two given Ints.  Do not use for/while loops or the * operator.

Sample Input: 5 * 6

Sample Output: 30
</pre> 

<details> 
  <summary>Solution</summary> 
	
 ```swift 
 func multiply(num1: Int, num2: Int) -> Int {
  if num2 == 1 { return num1 } // base case
  return num1 + multiply(num1: num1, num2: num2 - 1) // recursive call
}
multiply(num1: 5, num2: 6)
 ```
</details> 
	
</br>

<pre> 
7. Write a recursive function pow that takes two numbers x and y as input and returns x to the power y.  Do not use for/while loops

Sample Input: 3 ^ 4

Sample Output: 81
</pre> 

<details> 
  <summary>Solution</summary> 
	
 ```swift 
 func pow(x: Int, y: Int) -> Int {
  if y == 0 { return 1 }
  return x * pow(x: x, y: y - 1)
}
pow(x: 3, y: 4)
 ```
</details> 

</br> 

<pre>
8. Write a function that calculates the nth fibonacci number
 
 e.g input n = 6
 output = 8 
</pre> 

<details> 
  <summary>Solution</summary> 
	
```swift 	
func fib(_ num: Int) -> Int {
  guard num > 2 else { return 1 }
  return fib(num - 1) + fib(num - 2)
}
```

</details> 
 
	

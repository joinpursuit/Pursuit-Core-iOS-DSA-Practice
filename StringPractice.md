## String Exercises

<br>
1. Determine if a given string is a palindrome (the same backwards and forwards) ignoring capitalization and punctuation.

 Samples

| Input | Output |
| --- | --- |
| "Madam I'm Adam" | true |
| "No lava on Avalon.  No lava, no Avalon" | true |
| "They're taking the Hobbits to Isengard" | false |

<details> 
  <summary>Solution</summary> 
	
 ```swift 
 func isPalindrome(_ str: String) -> Bool {
  let strippedString = str.replacingOccurrences(of: "\\W", with: "", options: .regularExpression, range: nil)
  let length = strippedString.count

  if length > 1 {
    return palindrome(strippedString.lowercased(), left: 0, right: length - 1)
  }

  return false
}

private func palindrome(_ str: String, left: Int, right: Int) -> Bool {
  if left >= right {
    return true
  }

  let lhs = str[str.index(str.startIndex, offsetBy: left)]
  let rhs = str[str.index(str.startIndex, offsetBy: right)]

  if lhs != rhs {
    return false
  }

  return palindrome(str, left: left + 1, right: right - 1)
}
//https://github.com/raywenderlich/swift-algorithm-club/tree/master/Palindromes
 ```
</details> 
	
</br>


2. Determine if a given string has all the letters in the English alphabet in it
. (Pangram)

Samples

| Input | Output |
| --- | --- |
| The quick brown fox jumps over the lazy dog | true |
| Four square and seven years ago | false |


<details> 
  <summary>Solution</summary> 
	
 ```swift 
 func isPangram(input: String) -> Bool {
    return Set(input.filter{$0.isLetter}.lowercased()).count == 26
}
 ```
</details> 
	
</br>

<pre> 
3. Alice wrote a sequence of words in CamelCase as a string of letters, , having the following properties:

It is a concatenation of one or more words consisting of English letters.
All letters in the first word are lowercase.
For each of the subsequent words, the first letter is uppercase and rest of the letters are lowercase.
Given , print the number of words in  on a new line.

Print the number of words in string .

Sample Input

saveChangesInTheEditor

Sample Output

5
</pre> 

<details> 
  <summary>Solution</summary> 
	
 ```swift 
 let num = s.filter{String($0) == String($0).uppercased()}
    return num.count + 1
 ```
</details> 
	
</br> 

<pre> 
4. Sami's spaceship crashed on Mars! She sends a series of SOS messages to Earth for help.
Letters in some of the SOS messages are altered by cosmic radiation during transmission. Given the signal received by Earth as a string, , determine how many letters of Sami's SOS have been changed by radiation.

Sample Input 
SOSSPSSQSSOR

Sample Output 
3

Explanation
Expected signal: SOSSOSSOSSOS
Recieved signal: SOSSPSSQSSOR
Difference:          X  X   X
We print the number of changed letters.
</pre> 

<details> 
  <summary>Solution</summary> 
	
 ```swift 
func marsExploration(s: String) -> Int {
    guard s.count >= 3 else { return 0 }
    var errorCount = 0
    var patternCount = 0
    let pattern = "sos"
    
    for char in s {
        let index = pattern.index(pattern.startIndex, offsetBy: patternCount)
        let testChar = pattern[index]
        if char.lowercased() != testChar.description { errorCount += 1 }
        if patternCount == 2 {
            patternCount = 0
        } else {
            patternCount += 1
        }
    }
    
    return errorCount
}
 ```
</details> 

</br>

<pre> 
5. Juius Caesar protected his confidential information by encrypting it using a cipher. Caesar's cipher shifts each letter by a number of letters. If the shift takes you past the end of the alphabet, just rotate back to the front of the alphabet. In the case of a rotation by 3, w, x, y and z would map to z, a, b and c. Given a string and rotation, create an ecrypted string

Sample Input
middle-Outz
2

Sample Output

okffng-Qwvb
	
</br>

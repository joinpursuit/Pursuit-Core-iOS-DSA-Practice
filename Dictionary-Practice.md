## Dictionary Practice Problems


<pre>
1. You are given a dictionary code of type [String:String] which has values for all lowercase letters.
 The codedictionary represents a way to encode a message.
 For example if code["a"] = "z" and code["b"] = "x" the encoded version if "ababa" will be "zxzxz".
 You are also given a message which contains only lowercase letters and spaces.
 Use the code dictionary to encode the message and print it.
 
 var code = [
  "a" : "b",
  "b" : "c",
  "c" : "d",
  "d" : "e",
  "e" : "f",
  "f" : "g",
  "g" : "h",
  "h" : "i",
  "i" : "j",
  "j" : "k",
  "k" : "l",
  "l" : "m",
  "m" : "n",
  "n" : "o",
  "o" : "p",
  "p" : "q",
  "q" : "r",
  "r" : "s",
  "s" : "t",
  "t" : "u",
  "u" : "v",
  "v" : "w",
  "w" : "x",
  "x" : "y",
  "y" : "z",
  "z" : "a"
]

Input: "hello world"

Output: "ifmmp xpsme"
</pre>


</br> 

<pre> 
2. You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys “firstName” and “lastName”. Create an array of strings called firstNames that contains only the values for “firstName” from each dictionary.

Input: 
var people: [[String:String]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton"
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie"
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera"
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno"
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen"
    ]
]

Output: 
firstNames = ["Calvin","Garry","Leah","Sonja","Noel"]
</pre>

</br> 

<pre> 
3. You are given an array of dictionaries. Each dictionary in the array describes the score of a person. 
Find the person with the best score and print his full name.

Input: 
var people: [[String:Any]] = [
    [
        "firstName": "Calvin",
        "lastName": "Newton",
        "score": 13
    ],
    [
        "firstName": "Garry",
        "lastName": "Mckenzie",
        "score": 23
    ],
    [
        "firstName": "Leah",
        "lastName": "Rivera",
        "score": 10
    ],
    [
        "firstName": "Sonja",
        "lastName": "Moreno",
        "score": 3
    ],
    [
        "firstName": "Noel",
        "lastName": "Bowen",
        "score": 16
    ]
]

Output: 
Garry Mckenzie
</pre> 

</br> 

<pre> 
4. You are given an array of integers. Find out the frequency of each one.
The frequency of a number is the number of times it appears in the array.
Print the numbers in ascending order followed by their frequency.

Input: 
var numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]

Output: 
1 2
2 6
3 3
4 1
5 1
</pre>

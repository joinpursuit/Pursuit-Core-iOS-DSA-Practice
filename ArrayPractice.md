## 1. Problem Description

Find the sum of the diagonals of a square, two-dimensional array of Ints

## Sample

| Input | Output |
| --- | --- |
| 1 2 9 <br> 8 2 3 <br> 4 5 6 | 24 |

<br>

## 2. Problem Description

Find the sum of the first five even numbers in an array of Ints.

## Sample

| Input | Output |
| --- | --- |
|[3,7,-3,2,9,4,8,10,3,9,4,9,8,6,-2] | 28 |


## 3. Problem Description

Given a square, two dimensional array of Ints, find the row or column that has the greatest sum.  If more than one row or column are tied, return all of them.

## Sample

| Input | Output |
| --- | --- |
| 1 2 9 <br> 8 2 3 <br> 4 5 6 | Column 2: 18 |

<br>

## 3. Problem Description

Given an array of Ints, find the two numbers that when multiplied together give the greatest product, and return that product.

## Sample

| Input | Output |
| --- | --- |
| [1, 2, 7, 3, 9, 5] | 63 |

<br>

## 4. Problem Description

Find the sum of all elements in a two dimensional, rectangular array except for the corners.

## Sample

| Input | Output |
| --- | --- |
| 1 3 9 2 <br> 3 2 0 3 <br> 2 8 1 4 | 29 |

<br>

## 5. Problem Description

Given two sorted arrays, write a function that returns a single sorted list with all the elements from the inputs.  Your solution must work in O(n) time.

## Sample

| Input | Output |
| --- | --- |
| [3, 4, 6, 10, 11, 15] <br> [1, 5, 8, 12, 14, 19, 31] | [1, 3, 4, 5, 6, 8, 10, 11, 12, 14, 15, 19, 31] |


<br>

## 6. Problem Description

Write a function that takes an integer and an unsorted array of numbers and returns true if there's any pair of numbers in that array that can be summed up to the input integer.


## Samples

| Input | Output |
| --- | --- |
| [1, 3, 5, 4, 2], 7 | true |
| [1, 3, 5, 4, 2], 2 | false |

<br>

## 7. Problem Description

A telephone keypad has letters associated with each number (e.g. 2 = abc, 3 = def). Given a passphrase of "fb1" (e.g. one that you might use to log into a bank account), come up with an algorithm that would assemble an array that contains all the different possible letter combinations that, when typed into a telephone dial pad, would be equivalent to the original passphrase. That is, "fb1" equals "321" numerically; matching equivalent combinations include: "da1", "db1", "dc1", "ea1", "eb1", "ec1", "fa1" and "fc1".

![keypad](https://upload.wikimedia.org/wikipedia/commons/4/43/Telephone-keypad.svg)


## Sample

| Input | Output |
| --- | --- |
| "ab" | ["aa", "ab", "ba", "bb"] |

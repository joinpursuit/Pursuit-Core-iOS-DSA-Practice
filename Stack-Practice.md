## Stack Practice Exercises 

<pre>
 1. Design a stack that supports push, pop, top, and retrieving the minimum element in constant time.
 
 push(x) -- Push element x onto stack.
 pop() -- Removes the element on top of the stack.
 top() -- Get the top element.
 getMin() -- Retrieve the minimum element in the stack.
 
 Example:
 let minStack = MinStack()
 minStack.push(-2);
 minStack.push(0);
 minStack.push(-3);
 minStack.getMin();   //--> Returns -3.
 minStack.pop();
 minStack.top();      //--> Returns 0.
 minStack.getMin();   //--> Returns -2.
</pre> 

</br> 

<pre> 
 2. A bracket is considered to be any one of the following characters: (, ), {, }, [, or ].
 
 Two brackets are considered to be a matched pair if the an opening bracket (i.e., (, [, or {) occurs 
 to the left of a closing bracket (i.e., ), ], or }) of the exact same type. There are three types of 
 matched pairs of brackets: [], {}, and ().
 
 A matching pair of brackets is not balanced if the set of brackets it encloses are not matched. 
 For example, {[(])} is not balanced because the contents in between { and } are not balanced. 
 The pair of square brackets encloses a single, unbalanced opening bracket, (, and the pair of 
 parentheses encloses a single, unbalanced closing square bracket, ].
 
 By this logic, we say a sequence of brackets is balanced if the following conditions are met:
 
 It contains no unmatched brackets.
 The subset of brackets enclosed within the confines of a matched pair of brackets is also a matched 
 pair of brackets.
 Given n strings of brackets, determine whether each sequence of brackets is balanced. If a string 
 is balanced, return YES. Otherwise, return NO.
 
 Input:
 {[()]}
 {[(])}
 {{[[(())]]}}
 
 Output:
 YES
 NO
 YES
</pre> 

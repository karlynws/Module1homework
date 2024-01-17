# Module3

a) 0…5 and 0..<5 are two types of ____________. How are they different? 

They are types of Countable Range data types. 0…5 is a closed range. The … say that you count up to AND including 5. Whereas 0..<5 is a half-open range saying you do not want to include 5 when counting up.


b) Describe type inference in Swift and give an example. 

Type inference is where Swift is able to identify the data type you’re using even if you don’t declare it, it will sense it automatically. Like if I was to create var example = “This”, Swift sees it is a String and will demand a string when you go to use example again. It would error if you told it example = 0 (an Int). 


c) List three advantages of Playgrounds.

Three advantages of Playgrounds are: it is a safe simplified environment to try out code. The code is constantly running and you can see immediate feedback in the sidebar. It is a great way to learn and debug code. 

d) When does the execution of a while loop end? 

While loop will keep running until the condition of the code is no longer true. 


e) True or False: Tuples in Swift can contain values of different data types.

True!

f) List three data types you have used in Swift.

We have used: Bool, Int, String, Double.


g) To execute alternative code when the condition of an if statement is not met, you can use what clause? 

else/else if statements


h) What is the third element of the array nums defined below?  
let nums = [5, 0, 44, 20, 1].

Array’s are indexed from 0, so the nums in the 3 indexed slot would be 20. 


An ____________ is a unit of code that resolves to a single value.

I’m not sure. An expression?


j) Define two ways to unwrap optionals in Swift.

Optional binding (If let) and nil coalescing ( ??)


k) True or False: The condition in an if statement must be true or false.

True


l) Arrays in Swift are ____________ indexed.

Zero-indexed


m) An unordered collection of unique values of the same type is a _____________.

Set


ABOVE AND BEYOND

Area: square1 - 16 square2 - 25
Area: rectangle1 - 20 rectangle2 - 20

reference type vs value type. reference the same object whereas the struct is making copies

The Square was created using a struct, which is a value type, so an instance of a Square was created-copied from the original as its own independent copy. So when Square 2 was called, it was another copy of the instance and so the value was changed independent of the square 1. 

Whereas Rectangle was created using a class, which is a reference type which means that when rectangle was called, it was pointing to the same original instance. Then it was changed so all subsequent instances reflect that, as it is not a copy, but you have changed the original instance (to which all point or reference).

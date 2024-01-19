/* a) Create an array of Int called nums with values 0 through 20. Iterate over the Array and print the even numbers. */

let nums = Array(1...20)
for i in nums where i.isMultiple(of: 2){
  print(i)
}

//instructor feedback: You completed it right. However, the assignment asked you to created the nums array with values 0 through 20. You should make it Array(0...20) not Array(1...20). This will add 0 also to the output of this printing.
/*b ) In your Playground, define the following String:
 let sentence = “The qUIck bRown fOx jumpEd over the lAzy doG”
 Iterate over sentence counting the vowels (a, e, i, o, u), ignoring the case. */

let sentence = "The qUIck bRown fOx jumpEd over the lAzy doG"
let vowels: [Character] = ["a","e","i","o","u"]
var vowelCount = 0

for letter in sentence.lowercased() {
  if vowels.contains(letter){
    vowelCount += 1
  }
}

print("The number of vowels is \(vowelCount).")


/* c) Create two arrays of Int with the values of 0 through 4. Use a nested for loop to print a mini multiplication table. The output, which should be multiple lines, should be in the following format:
 0 * 0 = 0
 The format follows the number from the first array, space, followed by the character *, space,  followed by the number from the second array, space,  followed by =, space, followed by the result of the number from the first array multiplied by the number from the second array (just like the example above). There are a couple of ways to achieve this, but String Interpolation is the easiest. */

let firstArray = [1,2,3,4]
let secondArray = [1,2,3,4]

for i in firstArray {
  for number in secondArray{
    print(" \(i) * \(number) = \(i * number)")
  }
  print()
}
//instructor feedback: The same is true here as in task a. You need to add the 0 value at the beginning of your array. Sometimes just small change or one value in real application would make a great impact.
/* d) Write a function called average that takes an optional array of Int. If the array is not nil, calculate the average of the array's values and print:
 “The average of the values in the array is <average>.”
 Where <average> is the calculated average. If the array is nil, print:
 “The array is nil. Calculating the average is impossible.”
 Note: the average is calculated by summing the values in the array and dividing by the number of elements.
 Call this function two times. First, pass in the nums array from part A and second by passing an optional array of Int. */

func average(_ values: [Int]?) {
  
  if let values = values {
    
    let averageValue = (values.reduce(0, +))/(values.count)
    
    print("The average of the values in the array is \(averageValue)")
  } else {
    print("The array is nil. Calculating the average is impossible.")
  }
}

average(nums)
average(nil)

//instructor feedback: You did it right. But you missed only one condition. If you give this array an empty array "[Int]()" or "[ ]", it will crash because it divide the number by zero ( array count is zero). Because you need to add a condition with this condition "if let values = values" that the array shouldn't be empty. Ex. "!values.isEmpty"

/*e ) Create a struct called Person with the properties firstName, lastName, and age. Choose appropriate data types for the properties. Include a method on Person called details that prints the values stored in the properties in the following format:
 Name: <firstName> <lastName>, Age: <age>
 Create an instance of Person called person. Pass your first name, last name, and age for the properties. Finally, call the method details. */

struct Person {
  let firstName: String
  let lastName: String
  let age :Int
  func details() {
    print("Name: \(firstName) \(lastName), Age: \(age)")
  }
}

let person = Person(firstName: "Karlyn", lastName: "Sanders", age: 35)

person.details()

/* f) Create a class called Student with two properties: person of type Person and grades, an array of Int. The class must have a method called calculateAverageGrade that takes no parameters and returns a Double. Include a method called details that prints the values of the properties stored in Student along with the average grade in the following format:
 Name: <firstName> <lastName>, Age: <age>, GPA: <average grade>.
 Create an instance of Student called student passing in your first name, last name, age, and an array of five numbers: 94, 99, 81, 100, 79. Next call the details method to output the details of the student. */

class Student {
  var person: Person/*(firstName: "karlyn", lastName: "wright", age: 22)*/
  var grades: [Int]
  
  
  init(person: Person, grades: [Int]) {
    self.person = person
    self.grades = grades
  }
  
  func calculateAverageGrade() -> Double {
    let averageGrade: Double = Double (Double(grades.reduce(0, +)) /  Double (grades.count))
    return averageGrade
  }
  
  func details() {
    print("Name: \(person.firstName) \(person.lastName), Age: \(person.age), GPA: \(calculateAverageGrade()).")
  }
}

let student = Student(person: Person(firstName: "Karlyn", lastName: "Sanders", age: 35), grades: [94,99,81,100,79])


student.details()

//instructor feedback: You can handle the same condition as task D in the calculateAverageGrade method while calculating the average.

//ABOVE AND BEYOND

struct Square {
  var side: Int
  func area() -> Int {
    return side * side
  }
}
class Rectangle {
  var length: Int
  var width: Int
  init(length: Int, width: Int) {
    self.length = length
    self.width = width
  }
  func area() -> Int {
    return length * width
  }
}
var square1 = Square(side: 4)
var square2 = square1
square2.side = 5

print("Area: square1 - \(square1.area()) square2 - \(square2.area())")

var rectangle1 = Rectangle(length: 4, width: 4)
var rectangle2 = rectangle1

rectangle2.length = 5

print("Area: rectangle1 - \(rectangle1.area()) rectangle2 - \(rectangle2.area())")

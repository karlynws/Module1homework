
/*a) In the assignment for Module 3, part D asked you to write a function that would compute the average of an array of Int. Using that function and the array created in part A, create two overloaded functions of the function average.*/
let nums = Array(0...20)
//for i in nums where i.isMultiple(of: 2){
//  print(i)
//}


func average(_ optionalNumbers: [Int]?) {
  
  if let values = optionalNumbers {
    if values.isEmpty {
      print("Can't calculate average when the array is empty.")
    } else {
      let averageValue = (values.reduce(0, +))/(values.count)
      print("The average of the values in the array is \(averageValue)")
    }
  } else {
      print("The array is nil. Calculating the average is impossible.")
    }
  }

func average (_ values: [Int]) -> Double {
  let averageValue = Double(values.reduce(0, +)) / Double(values.count)
  return averageValue
}

func average (anArray: [Int]) -> String {
  let averageValue = (anArray.reduce(0, +)) / (anArray.count)
  return "The average is \(averageValue)"
}

average(anArray: nums)
print(average(nums))

//instructor feedback: You did it right. But you missed only one condition. If you give this array an empty array "[Int]()" or "[ ]", it will crash because it divide the number by zero ( array count is zero). Because you need to add a condition with this condition "if let values = values" that the array shouldn't be empty. Ex. "!values.isEmpty"

/* b) Create an enum called Animal that has at least five animals. Next, make a function called theSoundMadeBy that has a parameter of type Animal. This function should output the sound that the animal makes. For example, if the Animal pass is a cow, the function should output, “A cow goes moooo.” Hint: Do not use if statements to complete this section.
 Call the function twice, sending a different Animal each time.*/

enum Animal {
  case pig, horse, cow, duck, sheep
}
enum animalSound {
  case oink, neigh, moo, quack, baa
}

func theSoundMadeBy (_ type: Animal) -> animalSound {
  switch type {
  case .pig:
    return .oink
  case .horse:
    return .neigh
  case .cow:
    return .moo
  case .duck:
    return .quack
  case .sheep:
    return .baa
  }
}
let firstAnimal = Animal.pig
let secondAnimal = Animal.duck

theSoundMadeBy(firstAnimal)
theSoundMadeBy(secondAnimal)

print("The \(firstAnimal) says \(theSoundMadeBy(firstAnimal)) and the \(secondAnimal) says \(theSoundMadeBy(secondAnimal)).")

/* c) This question will have you creating multiple functions that will require you to use closures and collections. First, you will do some setup.
 Create an array of Int called nums with the values of 0 to 100.
 Create an array of Int? called numsWithNil with the following values:
 79, nil, 80, nil, 90, nil, 100, 72
 Create an array of Int called numsBy2 with values starting at 2 through 100, by 2.
 Create an array of Int called numsBy4 with values starting at 2 through 100, by 4.
 You can set the values of the arrays above using whatever method you find the easiest. In previous modules, you were introduced to ranges and sequences in Swift. Leveraging those in the Array initializer will allow you to create the requested arrays in a single line. Don’t let the last two break your stride
 .
 - Create a function called evenNumbersArray that takes a parameter of [Int] (array of Int) and returns [Int]. The array of Int returned should contain all the even numbers in the array passed. Call the function passing the nums array and print the output.
 - Create a function called sumOfArray that takes a parameter of [Int?] and returns an Int. The function should return the sum of the array values passed that are not nil. Call the function passing the numsWithNil array, and print out the results.
 - Create a function called commonElementsSet that takes two parameters of [Int] and returns a Set<Int> (set of Int.) The function will return a Set<Int> of the values in both arrays.
 Call the function commonElementsSet passing the arrays numsBy2, numsBy4, and print out the results. */

let num = Array(0...100)
let numsWithNil = [79, nil, 80, nil, 90, nil, 100, 72]
let numsBy2 = Array(stride(from: 2, through: 100, by: 2))
let numsBy4 = Array(stride(from: 2, through: 100, by: 4))

//Even Number Array function TRY WITH FILTER
func evenNumbersArray(_ providedNumbers: [Int]) -> [Int] {
  return providedNumbers.filter { (number) -> Bool in
    return number % 2 == 0
  }
}
//Calling and printing evenNumbersArray
evenNumbersArray(num)
print(evenNumbersArray(num))


//sumOfArray function
func sumOfArray(_ arrayWithNil: [Int?]) -> Int {
  let notNilArray = arrayWithNil.compactMap { value -> Int? in
    return value
  }
  var sum = notNilArray.reduce(0) { (runningTotal, curentValue) -> Int in
    return runningTotal + curentValue
  }
  return sum
}
//calling and printing sumOfArray
sumOfArray(numsWithNil)
print(sumOfArray(numsWithNil))


//commonElementSet
func commonElementSet(_ firstArray: [Int], _ secondArray: [Int]) -> Set<Int> {
  let set1 = Set(firstArray)
  let set2 = Set(secondArray)
  return set1.intersection(set2)
  //set<Int> of the values that are in both arrays
}

commonElementSet(numsBy2, numsBy4)
print(commonElementSet(numsBy2, numsBy4))

/* d) Create a struct called Square that has a stored property called sideLength and a computed property called area. Create an instance of Square and print out the area. */

struct Square {
  let sideLength: Int
  var area:Int {
    sideLength * sideLength
  }
}
let square = Square(sideLength: 5)
print(square.area)
 
/* Part 3 - Above and Beyond
 
 Note: you don’t need to complete Above and Beyond sections in order to pass the homework. If you need to, you can stop here. But if you have the time and bandwidth, the A&B sections will let you challenge yourself further.
 Create a protocol called Shape with a calculateArea() -> Double method. Create two structs called Circle and Rectangle that conform to the protocol Shape. Both Circle and Rectangle should have appropriate stored properties for calculating the area.
 Create instances of Circle and Rectangle and print out the area for each.
 Next, extend the protocol Shape to add a new method called calculateVolume() -> Double.
 Finally, create a struct called Sphere that conforms to Shape. Sphere should have appropriate stored properties for calculating area and volume.
 Create an instance of Sphere and print out the area and volume.*/
                                                                 
protocol Shape {
  func calculateArea() -> Double
}

struct Rectangle: Shape {
  var length: Double
  var width: Double

  func calculateArea() -> Double {
    return length * width
  }
}

struct Circle: Shape {
  var radius: Double
  
  func calculateArea() -> Double {
    return Double.pi * radius * radius
  }
}

let circle = Circle(radius: 2.0)
let rectangle = Rectangle(length: 5.0, width: 6.0)

print("The circle area is \(circle.calculateArea()). And the rectangle area is \(rectangle.calculateArea()).")

extension Shape {
  func calculateVolume() -> Double {
    return 0.0
  }
}

struct Sphere: Shape {
  var radius: Double
  
  func calculateArea() -> Double {
    return 4.0 * Double.pi * radius * radius
  }
  
  func calculateVolume() -> Double {
    return (4.0/3.0) * Double.pi * radius * radius * radius
  }
  
}

let sphere = Sphere(radius: 5)
print("The area is \(sphere.calculateArea()). The volume is \(sphere.calculateVolume()).")

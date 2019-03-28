//import UIKit
//
//var str = "Hello, playground"
///****************
//
//
//
//
//********************/
//
//struct RGBColor {
//	let red: Double
//	let green: Double
//	let blue: Double
//	let alpha: Double
//
//	let description: String
//
//	// Add your code below
//
//	init(red: Double, green: Double, blue: Double, alpha: Double) {
//		self.red = red
//		self.green = green
//		self.blue = blue
//		self.alpha = alpha
//		self.description = "red: \(red), green: \(green), blue: \(blue), alpha: \(alpha)"
//	}
//
//
//}
//
///****************
//
//********************/
//struct Person1213 {
//	let firstName: String
//	let lastName: String
//
//	init(firstName: String, lastName: String) {
//		self.firstName = firstName
//		self.lastName = lastName
//	}
//
//	func fullName() -> String {
//
//		return  firstName + " " + lastName
//	}
//
//}
//
///****************
//
//********************/
//
//
//class Shape {
//	var numberOfSides: Int
//
//	init(numberOfSides: Int)
//	{
//		self.numberOfSides = numberOfSides
//	}
//}
//
//let someShape = Shape(numberOfSides: 10)
//
//
///****************
//
//********************/
//
//
//struct Location {
//	let latitude: Double
//	let longitude: Double
//}
//
//class Business {
//	let name: String
//	let location: Location
//	init(name: String, latitude: Double, longitude: Double) {
//		self.name = name
//		self.location = Location(latitude: longitude, longitude: latitude)
//	}
//}
//
////let someBusiness = Business(name: "RERE", latitude: 23432.43, longitude: 232.323)
////print(someBusiness.name)
//
///****************
//
//********************/
//
//class Vehicle {
//	var numberOfDoors: Int
//	var numberOfWheels: Int
//
//	init(withDoors doors: Int, andWheels wheels: Int) {
//		self.numberOfDoors = doors
//		self.numberOfWheels = wheels
//	}
//}
//
//// Enter your code below
//
//class Car: Vehicle {
//	var numberOfSeats: Int = 4
//	override init(withDoors doors: Int, andWheels wheels: Int) {
//		super.init(withDoors: doors, andWheels: wheels)
//
//	}
//}
///****************
//
//
//********************/
//
//
//class PersonXF3 {
//	let firstName: String
//	let lastName: String
//
//	init(firstName: String, lastName: String) {
//		self.firstName = firstName
//		self.lastName = lastName
//	}
//
//	func fullName() -> String {
//		return "\(firstName) \(lastName)"
//	}
//}
//
//class Doctor: PersonXF3 {
//
//	override init(firstName: String, lastName: String) {
//		super.init(firstName: firstName, lastName: lastName)
//	}
//
//	override func fullName() -> String {
//		return "Dr. \(super.lastName)"
//	}
//}
//
//
//// Enter your code below
//
//
//
//
///****************
//
//********************/
//
//
//struct Tag {
//	let name: String
//}
//
//struct Post {
//	let title: String
//	let author: String
//	let tag: Tag
//
//	func description() -> String{
//		return "\(title) by \(author). Filed under \(tag.name)"
//	}
//}
//
////let firstPost = Post(title: "Treehouse blog", author: "S. Hunter", tag: Tag(name: "Swift, iOS"))
////let postDescription = firstPost.description()
//
//
///****************
//
//********************/
//
//class Point {
//	var x: Int
//	var y: Int
//
//	init(x: Int, y: Int) {
//		self.x = x
//		self.y = y
//	}
//}
//
//class Machine {
//	var location: Point
//
//	init() {
//		self.location = Point(x: 0, y: 0)
//	}
//
//	func move(_ direction: String) {
//		print("Do nothing! I am a machine!")
//	}
//}
//
//// Enter your code below
//
//class Robot: Machine {
//
//	override func move(_ direction: String) {
//
//		if direction == "Up" {
//			super.location.y += 1
//		} else if direction == "Down" {
//			super.location.y -= 1
//		} else if direction == "Right" {
//			super.location.x += 1
//		} else if direction == "Left" {
//			super.location.x += 1
//		}
//	}
//
//}

/****************

********************/

class Point {
	var x: Int
	var y: Int
	
	init(x: Int, y: Int) {
		self.x = x
		self.y = y
	}
}

enum Direction {
	case left
	case right
	case up
	case down
}

class Robot {
	var location: Point
	
	init() {
		self.location = Point(x: 0, y: 0)
	}
	
	func move(_ direction: Direction) {
		// Enter your code below
		switch direction {
		case .up:
			location.y += 1
		case .down:
			location.y -= 1
		case .left:
			location.x -= 1
		case .right:
			location.x += 1
		}
		
	}
}


/****************

********************/

//import UIKit
//
//enum MobilePhone {
//	case iphone(String)
//	case android(String)
//	case windowsPhone(String)
//
//}
//
//
//let iphone = MobilePhone.iphone("7 Plus")
//print(iphone)


/****************
1.In the editor you've been provided with a file buttons.swift that defines a
BarButton type. Let's start simple. Declare a constant named done and assign
an enum value of type BarButton with the member done. This member takes an
associated value; assign it the string "Save".
2.Next, add a method to the enum named button that returns an instance of the
class UIBarButtonItem configured properly. An example of how to create an
instance for this task is shown in the comments below. Use the same initializer.
In the method, using the associated values as titles for the button, return a
button with style UIBarButtonStyle.done for the done member of the BarButton
enum. Similarly for the edit member, return a UIBarButtonItem instance with
the style set to UIBarButtonStyle.plain. In both cases you can pass nil for
target and action. Once you have a method, call it on the value we created in
the previous task and assign it to a constant named button.
********************/

import UIKit
enum BarButton {
	case done(title: String)
	case edit(title: String)
	
	func button () -> UIBarButtonItem {
		switch self {
		case .done(let title):
			return  UIBarButtonItem(title: title, style: .done, target: nil, action: nil)
		case .edit(let title):
			return  UIBarButtonItem(title: title, style: .plain, target: nil, action: nil)
		}
	}
}
let done = BarButton.done(title: "Save")
let button = done.button()


/****************

********************/


//var someValue: Int? = nil


/****************

********************/


enum Compass: Int {
	case north = 1
	case south = 2
	case east = 3
	case west = 4
	
}

//let direction = Compass(rawValue: 2)
/****************

********************/




protocol User {
	var name: String { get }
	var age: Int { get set }
}

struct Person: User {
	var name: String
	var age: Int
	
}
let somePerson = Person(name: "hv", age: 29)



/****************

********************/






/****************

********************/







/****************

********************/





/****************

********************/



/****************

********************/








/****************

********************/






/****************

********************/







/****************

********************/





/****************

********************/



/****************

********************/








/****************

********************/






/****************

********************/







/****************

********************/





/****************

********************/



/****************

********************/








/****************

********************/






/****************

********************/







/****************

********************/





/****************

********************/



/****************

********************/








/****************

********************/






/****************

********************/







/****************

********************/





/****************

********************/



/****************

********************/








/****************

********************/






/****************

********************/







/****************

********************/





/****************

********************/



/****************

********************/








/****************

********************/






/****************

********************/







/****************

********************/





/****************

********************/



/****************

********************/








/****************

********************/






/****************

********************/







/****************

********************/





/****************

********************/



/****************

********************/








/****************

********************/






/****************

********************/







/****************

********************/





/****************

********************/



/****************

********************/








/****************

********************/






/****************

********************/







/****************

********************/





/****************

********************/



/****************

********************/








/****************

********************/






/****************

********************/







/****************

********************/





/****************

********************/



/****************

********************/








/****************

********************/






/****************

********************/







/****************

********************/





/****************

********************/



/****************

********************/








/****************

********************/






/****************

********************/







/****************

********************/





/****************

********************/



/****************

********************/








/****************

********************/








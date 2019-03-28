



struct User {
	var fullName: String
	var email: String
	var age: Int
}

//var someUser  = User(fullName: "SdS", email: "SDS", age: 3232)
//print(someUser)
//
//var other = someUser
//other.age = 2
//
//print(someUser.age)
//print(other.age)


class Person {
	var fullName: String
	var email: String
	var age: Int
	
	init(fullName: String, email: String, age: Int) {
		self.fullName = fullName
		self.email = email
		self.age = age
	}
}

var p = Person(fullName: "@#@", email: "DSD", age: 2121)
var p2 = p
p2.age = 11


print(p.age)
print(p2.age)

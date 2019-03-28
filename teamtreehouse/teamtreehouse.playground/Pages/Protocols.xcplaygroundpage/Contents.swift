
protocol FullNameable {
	var fullName: String { get }
}



struct User: FullNameable {
	var fullName: String
}

//let user = User(fullName: "one two")

import Foundation


enum EmployeeType {
	case manager
	case traditional
}

class Employee {
	let name: String
	let address: String
	let startDate: Date
	let type: EmployeeType

	init(name: String, address: String, startDate: Date, type: EmployeeType) {
		self.name = name
		self.address  = address
		self.startDate = startDate
		self.type = type
	}
}


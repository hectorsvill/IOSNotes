//class Address {
//	var buildingName: String?
//	var buildingNumber: String?
//	var street: String?
//}
//
//class Residence {
//	var numberOfRooms = 1
//	var address: Address?
//}
//
//class Person {
//	var residence: Residence?
//}
//
//let hector = Person()
//
//let address = Address()
//address.street = "1234 olive str"
//address.buildingName = "Name"
//address.buildingNumber = "32"
//
//let residence = Residence()
//residence.address = address
//
//hector.residence = residence
//
////if let home = hector.residence,
////	let postalAddress = home.address,
////	let buildingNumber = postalAddress.buildingNumber,
////	let convertedNumber = Int(buildingNumber) {
////	print(convertedNumber)
////}
//
//if let buildingNumber = hector.residence?.address?.buildingNumber {
//	print(buildingNumber)
//}


//nil coalescing Operator
var str: String? = nil
str = "one"
let x = str ?? "no str"
print(x)

import Foundation


/**********


Enums

**********/


let week = ["S", "M", "T", "W", "Th", "F", "S"]



enum Day {
	case sunday
	case monday
	case tuesday
	case wednesday
	case thursday
	case friday
	case saturday
}

enum DayType {
	case weekend
	case weekday
}

func getType (of type: DayType) -> DayType {
	return .weekday
}
func getType (of type: Day) -> Day {
	return .friday
}

/**********


Associated Enums

**********/
import UIKit
enum ColorComponent {
	case rgb(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
	case hsb(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
	
	func color() -> UIColor {
		switch self {
		case .rgb(let red, let green, let blue, let alpha):
			return UIColor(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: alpha)
		case .hsb(let hue, let saturation, let brightness, let alpha):
			return UIColor(hue: hue/360.0, saturation: saturation/100.0, brightness: brightness/100.0, alpha: alpha)
		}
	}
}

ColorComponent.rgb(red: 62.0, green: 19.1, blue: 1.1, alpha: 1.0).color()

/**********


Integer raw Value

**********/

enum Coin: Double {
	case penny = 0.01
	case nickel = 0.05
	case dime = 0.1
	case quarter = 0.25
}

let coins: [Coin] = [.penny, .nickel, .dime, .dime, .quarter, .quarter, .quarter]

func sum(having coins: [Coin]) -> Double {
	var total: Double = 0
	for coin in coins {
		switch coin {
		case .penny: total += 0.01
		case .nickel: total += 0.05
		case .dime: total += 0.1
		case .quarter: total += 0.25
		}
	}
	return total
}

sum(having: coins)


/**********

Initializing With Raw Values1fsz

**********/

enum HTTPStatusCode: Int {
	case success = 200
	case forbiden = 403
	case unauthorized = 401
	case notFound = 404
}


let statusCode = 200

let httpStatusCode = HTTPStatusCode(rawValue: 200)


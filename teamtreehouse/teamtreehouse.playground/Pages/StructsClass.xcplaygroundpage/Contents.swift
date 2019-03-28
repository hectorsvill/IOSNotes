import Foundation
import UIKit
/****************
Struct
********************/

struct Point {
	let x: Int
	let y: Int
	
	init(x: Int, y: Int) {
		self.x = x
		self.y = y
	}
	
	/// Returns the surrounding points in range of
	/// the current one
	func points(inRange range: Int = 1) -> [Point] {
		var results = [Point]()

		let lowerBoundOfXRange = x - range
		let upperBoundOfXRange = x + range

		let lowerBoundOfYRange = y - range
		let upperBoundOfYRange = y + range

		for xCoordinate in lowerBoundOfXRange...upperBoundOfXRange {
			for yCoordinate in lowerBoundOfYRange...upperBoundOfYRange {
				let coordinatePoint = Point(x: xCoordinate, y: yCoordinate)
				results.append(coordinatePoint)
			}
		}

		return results
	}
}

/****************
	Class
********************/

class SuperEnemy: Enemy {
	let isSuper: Bool = true
	
	override init(x: Int, y: Int) {
		super.init(x: x, y: y)
		self.life = 50
	}
}

class Enemy {
	///number of lives left
	var life: Int = 2
	let position: Point
	
	init(x: Int, y: Int) {
		self.position = Point(x: x, y: y)
	}
	
	///decrease life by a factor
	func decreaseLife(by factor: Int) {
		life -= factor
	}
}

class Tower {
	let position: Point
	var range = 1
	var strength: Int = 1
	
	init(x: Int, y: Int) {
		self.position = Point(x: x, y: y)
	}
	
	func fire (at enemy: Enemy) {
		if isInRange(of: enemy) {
			enemy.decreaseLife(by: 1)
			print("Gotcha")
		} else {
			print("missed")
		}
	}
	
	func isInRange(of enemy: Enemy) -> Bool {
		let availablePosition = position.points(inRange: range)
		
		for point in availablePosition {
			if point.x == enemy.position.x && point.y == enemy.position.y{
				return true
			}
		}
		return false
	}
	
}

class LasserTower: Tower {
	
	override init(x: Int, y: Int) {
		super.init(x: x, y: y)
		self.range = 100
		self.strength = 100
		
	}
	
	override func fire(at enemy: Enemy) {
		while enemy.life >= 0 {
			enemy.decreaseLife(by: strength)
		}
		print("Enemy destroyed!")
	}
	
}





let tower1 = Tower(x: 3, y: 2)
let enemy = Enemy(x: 2, y: 2)
let sEnemy = SuperEnemy(x: 100, y: 10)
tower1.fire(at: enemy)
let laserTower = LasserTower(x: 40, y: 22)














































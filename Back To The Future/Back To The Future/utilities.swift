//
//  utilities.swift
//  Back To The Future
//
//  Created by Hector Steven on 4/14/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import Foundation

class Utilities {
	func getCurentYear () -> String {
		let date = Date()
		let calender = Calendar.current
		let str = String(calender.component(.year , from: date))
		return str
	}
	
	func getLetterIndex (str: String, location: Int) -> String {
		let index = str.index(str.startIndex, offsetBy:  location)
		return String(str[index])
	}
	
	func getCurrentTime() -> String {
		let date = Date()
		
		
		let formater = DateFormatter()
		formater.dateStyle = .none
		formater.timeStyle = .medium
		
		let timeStr = formater.string(from: date)
		return timeStr
	}
	
	func getRandomYear () -> String {
		let x = Int(getCurentYear())! + 1
		return String(Int.random(in: x...x+1000 ))
	}
	
}

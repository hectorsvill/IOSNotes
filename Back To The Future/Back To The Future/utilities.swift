//
//  utilities.swift
//  Back To The Future
//
//  Created by Hector Steven on 4/14/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import Foundation

class utilities {
	func getCurentYears () -> String {
		let date = Date()
		let calender = Calendar.current
		
		
		return String(calender.component(.year, from: date))
	}
}

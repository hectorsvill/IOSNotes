//
//  UIView+Exntend.swift
//  Back To The Future
//
//  Created by Hector Steven on 4/15/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
	func setLabels(_ label1: UILabel, _ label2: UILabel, _ label3: UILabel, _ label4: UILabel, _ year: String) {
		let util = Utilities()
		
		label1.text = util.getLetterIndex(str: year, location: 0)
		label2.text = util.getLetterIndex(str: year, location: 1)
		label3.text = util.getLetterIndex(str: year, location: 2)
		label4.text = util.getLetterIndex(str: year, location: 3)
	}
}


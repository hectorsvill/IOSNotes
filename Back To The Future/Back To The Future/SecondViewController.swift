//
//  SecondViewController.swift
//  Back To The Future
//
//  Created by Hector Steven on 4/14/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

	@IBOutlet var label1: UILabel!
	@IBOutlet var label2: UILabel!
	@IBOutlet var label3: UILabel!
	@IBOutlet var label4: UILabel!
	let util = Utilities()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .lightGray
	
		
		view.setLabels(label1, label2, label3, label4, util.getCurentYear())
	
	}

	@IBAction func godocButton(_ sender: Any) {
		view.setLabels(label1, label2, label3, label4, util.getRandomYear())
		
		animateItem(duration: 0.5, delay: 0, object: label1)
		animateItem(duration: 0.5, delay: 0.2, object: label2)
		animateItem(duration: 0.5, delay: 0.2, object: label3)
		animateItem(duration: 0.5, delay: 0.2, object: label4)
		
//		UIView.animate(withDuration: 0.5) {
//			self.label1.center.x += self.view.bounds.width
//		}
		
	}
	
	func animateItem (duration: Double, delay: Double, object: UIView) {
		UIView.animateKeyframes(withDuration: duration, delay: delay, options: [], animations: {
			object.center.x += 	self.view.bounds.width
		}) { (true) in
			
		}
	}
	
}


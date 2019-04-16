//
//  FirstViewController.swift
//  Back To The Future
//
//  Created by Hector Steven on 4/14/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

	@IBOutlet var label1: UILabel!
	@IBOutlet var label2: UILabel!
	@IBOutlet var label3: UILabel!
	@IBOutlet var label4: UILabel!
	@IBOutlet var timeLabel: UILabel!
	
	var timer = Timer()
	let util = Utilities()

	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .gray
		let year = util.getCurentYear()
		timeLabel.text = util.getCurrentTime()
		view.setLabels(label1, label2, label3, label4, year)
		timer = .scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(tic), userInfo: nil, repeats: true)
	}
	
	@objc func tic() {
		timeLabel.text = util.getCurrentTime()
		
		UIView.animate(withDuration: 1.0, delay: 0, options: [], animations: {
			self.view.alpha = 0.5
		}) { (true) in
			self.view.alpha = 1.0
		}
	}
}


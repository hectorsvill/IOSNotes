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
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .gray
		// Do any additional setup after loading the view.
		timeLabel.text = "hectorsvill"
		print(utilities().getCurentYears())
	}

	
}


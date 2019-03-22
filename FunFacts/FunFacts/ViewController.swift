//
//  ViewController.swift
//  FunFacts
//
//  Created by Hector Steven on 3/22/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet var funFactButton: UIButton!
	@IBOutlet var funFactLabel: UILabel!
	let factProvideer = FunFact()
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		funFactLabel.text = factProvideer.randomFact()
		view.backgroundColor = getNewColor()
		funFactButton.layer.cornerRadius = 10
	}

	@IBAction func showFact() {
		funFactLabel.text = factProvideer.randomFact()
		let color = getNewColor()
		view.backgroundColor = color
		funFactButton.tintColor = color
		
		
	}
	
	func getRandCGFloat(x: Float, y: Float) -> CGFloat {
		return CGFloat(Float.random(in: x...y) / 250.0)
	}
	
	func getNewColor() -> UIColor {
		let newColor = UIColor(red: getRandCGFloat(x: 91.0, y: 250.0), green: getRandCGFloat(x: 50.0, y: 250.0), blue: getRandCGFloat(x: 100.0, y: 250.0), alpha: 1.0)
		return newColor 
	}
	
}


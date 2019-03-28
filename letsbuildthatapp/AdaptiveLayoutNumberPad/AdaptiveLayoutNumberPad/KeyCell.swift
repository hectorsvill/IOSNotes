//
//  KeyCell.swift
//  AdaptiveLayoutNumberPad
//
//  Created by Hector Steven on 3/27/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class KeyCell: UICollectionViewCell {
	
	let digitsLabel = UILabel()
	let lettersLabel = UILabel()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		backgroundColor = UIColor(white: 0.9, alpha: 1)
		
		
		digitsLabel.text = "2"
		
		if UIDevice.current.screenType == .iPhones_5_5s_5c_SE {
			digitsLabel.font = .systemFont(ofSize: 25)
		} else {
			digitsLabel.font = .systemFont(ofSize: 32)
		}

		digitsLabel.textAlignment = .center
		
		lettersLabel.text = "A B C"
		if UIDevice.current.screenType == .iPhones_5_5s_5c_SE {
			lettersLabel.font = .systemFont(ofSize: 7)
		} else {
			lettersLabel.font = .systemFont(ofSize: 9)
		}
		
		lettersLabel.textAlignment = .center
		
		
		let stackView = UIStackView(arrangedSubviews: [digitsLabel, lettersLabel])
		stackView.axis = .vertical
		addSubview(stackView)
		stackView.centerInSuperview()
		
	}
	
	override func layoutSubviews() {
		super.layoutSubviews()
		layer.cornerRadius = self.frame.width / 2
	}
	
	
	
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
}


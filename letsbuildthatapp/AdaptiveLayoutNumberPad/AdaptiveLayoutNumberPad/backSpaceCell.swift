//
//  backSpaceCell.swift
//  AdaptiveLayoutNumberPad
//
//  Created by Hector Steven on 3/28/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class BackSpaceCell: UICollectionViewCell {
	let image = UIImageView(image: #imageLiteral(resourceName: "iconfinder_00-ELASTOFONT-STORE-READY_close_2703079"))
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		
		backgroundColor = .white// UIColor(white: 0.9, alpha: 1)
		addSubview(image)
		
		image.contentMode = .scaleAspectFit
		image.centerInSuperview(size: .init(width: 40, height: 40))
		
	}
	
	override func layoutSubviews() {
		super.layoutSubviews()
		layer.cornerRadius = frame.width / 2
	}
	
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}

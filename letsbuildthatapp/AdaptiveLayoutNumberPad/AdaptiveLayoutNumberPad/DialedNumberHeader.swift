//
//  DialedNumberHeader.swift
//  AdaptiveLayoutNumberPad
//
//  Created by Hector Steven on 3/27/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit


class DialedNumberHeader: UICollectionReusableView {
	override init(frame: CGRect) {
		super.init(frame: frame)
		
		backgroundColor = .orange
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}

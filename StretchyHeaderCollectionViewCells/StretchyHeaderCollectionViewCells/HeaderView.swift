//
//  HeaderView.swift
//  StretchyHeaderCollectionViewCells
//
//  Created by Hector Steven on 3/18/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {

	
	let imageView: UIImageView = {
		let iv = UIImageView(image: #imageLiteral(resourceName: "stoiczfpv-profile"))
		iv.contentMode = .scaleToFill
		return iv
	}()
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		//custome code for layout
		
		backgroundColor = .green
		
		addSubview(imageView)
		imageView.fillSuperView()
		
		
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}

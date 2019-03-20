//
//  ViewController.swift
//  ProgrammaticAutoLayout
//
//  Created by Hector Steven on 3/19/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		let greenView = UIView()
		greenView.backgroundColor = .green

		let yellowView = UIView()
		yellowView.backgroundColor = .yellow

		let blueView = UIView()
		blueView.backgroundColor = .blue
	
		[greenView, yellowView, blueView].forEach{ view.addSubview($0) }
		
		greenView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: nil, bottom: nil,
						 trailing: view.safeAreaLayoutGuide.trailingAnchor,
						 padding: .init(top: 0, left: 0, bottom: 0, right: 16),
						 size: .init(width: 125, height: 0))
		greenView.heightAnchor.constraint(equalTo: greenView.widthAnchor).isActive = true
		
		yellowView.anchor(top: greenView.bottomAnchor, leading: nil, bottom: nil,
						  trailing: greenView.trailingAnchor, padding: .init(top: 12, left: 0, bottom: 0, right: 0))
		yellowView.anchorSize(to: greenView)
		
		blueView.anchor(top: greenView.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: yellowView.bottomAnchor,
						trailing: greenView.leadingAnchor, padding: .init(top: 0, left: 12, bottom: 0, right: 12))
		
	
		let purpleView = UIView()
		purpleView.backgroundColor = .purple
		view.addSubview(purpleView)
		purpleView.fillSuperView()
	}


}

extension UIView {
	
	func fillSuperView () {
		anchor(top: superview?.topAnchor, leading: superview?.leadingAnchor, bottom: superview?.bottomAnchor, trailing: superview?.trailingAnchor)
	}
	
	func anchorSize(to view: UIView) {
		widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
		heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
		
	}
	
	
	
	func anchor (top: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?,
				 trailing: NSLayoutXAxisAnchor?, padding: UIEdgeInsets = .zero, size: CGSize = .zero) {
		
		translatesAutoresizingMaskIntoConstraints = false

		if let top = top {
			topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
		}
		
		if let leading = leading {
			leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
		}
		
		if let bottom = bottom {
			bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
		}
		
		if let trailing = trailing {
				trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
		}

		if size.width != 0 {
			widthAnchor.constraint(equalToConstant: size.width).isActive = true
		}
		
		if size.height != 0 {
			heightAnchor.constraint(equalToConstant: size.height).isActive = true
		}
		
	}
}

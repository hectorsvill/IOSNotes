//
//  ViewController.swift
//  AdaptiveLayoutNumberPad
//
//  Created by Hector Steven on 3/27/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout{
	fileprivate let cellId = "cellId"
	fileprivate let headerId = "headerId"
	fileprivate let greenButtonCellId = "greenButtonCellId"
	fileprivate let backButtonCellId = "backButtonCellId"

	let numbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "*", "0", " #"]
	let letter = ["", "A B C", "D E F", "G H I", "J K L", "M N O", "P Q R S", "T U V", " W X Y Z", " ", "+", ""]
	var dialdNumbersDisplayString = ""
	
	override func viewDidLoad() {
		super.viewDidLoad()
		collectionView.backgroundColor = .white
		
		collectionView.register(GreenCallButtenCell.self, forCellWithReuseIdentifier: greenButtonCellId)
		collectionView.register(BackSpaceCell.self, forCellWithReuseIdentifier: backButtonCellId)
		
		collectionView.register(KeyCell.self, forCellWithReuseIdentifier: cellId)
		
		collectionView.register(DialedNumberHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
	}

	///////////////////////////////////////////////////////////////////////////

	override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		
		//backspace index path
		if indexPath.item == 1 && indexPath.section == 1 {
			dialdNumbersDisplayString = String(dialdNumbersDisplayString.dropLast())
		} else {
			let number = numbers[indexPath.item]
			dialdNumbersDisplayString += number
			
		}
		collectionView.reloadData()
		
	}
	
	override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
		let header =  collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath) as! DialedNumberHeader
		header.numbersLabel.text = dialdNumbersDisplayString
		return header
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
		if section == 1 {
			return .zero
		}
		let height = view.frame.height * 0.2
		return .init(width: view.frame.width, height: height)
	}
	
	///////////////////////////////////////////////////////////////////////////
	
	
	override func numberOfSections(in collectionView: UICollectionView) -> Int {
		return 2
	}
	
	override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		
		if section == 1 {
			return 2
		}
		return numbers.count
	}
	
	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		if indexPath.section == 1 {
			if indexPath.item == 0 {
				let greenCell = collectionView.dequeueReusableCell(withReuseIdentifier: greenButtonCellId, for: indexPath) as! GreenCallButtenCell
				return greenCell
			} else {
				let backspaceCell = collectionView.dequeueReusableCell(withReuseIdentifier: backButtonCellId, for: indexPath) as! BackSpaceCell
				return backspaceCell
			}
			
			
		}
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! KeyCell
		cell.digitsLabel.text = numbers[indexPath.row]
		cell.lettersLabel.text = letter[indexPath.row]
		return cell
	}
	
	///////////////////////////////////////////////////////////////////////////
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
		return 16
	}
	
	
	lazy var leftRightPadding = view.frame.width * 0.13
	lazy var interSpacing = view.frame.width * 0.1
	lazy var cellWidth = (view.frame.width - 2 * leftRightPadding - 2 * interSpacing) / 3
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return .init(width: cellWidth, height: cellWidth)
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
		
		if section == 1 {
			let leftPadding = (view.frame.width) / 2 - cellWidth / 2
			return .init(top: 0, left: leftPadding, bottom: 0, right: self.leftRightPadding)
		}

		let leftRightPadding = view.frame.width * 0.15
		return .init(top: 16, left: leftRightPadding, bottom: 16, right: leftRightPadding)
	}

	///////////////////////////////////////////////////////////////////////////
	
	
	
}


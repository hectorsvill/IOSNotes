//
//  StretchyHeaderViewController.swift
//  StretchyHeaderCollectionViewCells
//
//  Created by Hector Steven on 3/18/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class StretchyHeaderViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
	
	fileprivate let cellId = "cellId"
	fileprivate let headerId = "headerId"
	fileprivate let padding: CGFloat = 16

	
	
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		
		setupCollectionViewLayout()
		setupCollectionView()
	}

	fileprivate func setupCollectionViewLayout() {
		if let layout = collectionViewLayout as? UICollectionViewFlowLayout {
			layout.sectionInset = .init(top: padding, left: padding, bottom: padding, right: padding)
		}
	}

	override var preferredStatusBarStyle: UIStatusBarStyle {
		return .lightContent
	}
	
	fileprivate func setupCollectionView() {
		collectionView.backgroundColor = UIColor.lightGray
		//collectionView.contentInsetAdjustmentBehavior = .never
		collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellId)
		collectionView.register(HeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerId)
	}
	
	override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
		let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerId, for: indexPath)
		
		return header
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
		return .init(width: view.frame.width, height: 200)
	}
	
	////////////////////////////////////////////////////////////////
	
	override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 20
	}
	
	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath)
		cell.backgroundColor = .white
		return cell
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return .init(width: view.frame.width - 2 * padding, height: 60)
	}
	
	
	
}

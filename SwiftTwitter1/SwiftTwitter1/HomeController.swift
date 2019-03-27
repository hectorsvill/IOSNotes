//
//  HomeController.swift
//  SwiftTwitter1
//
//  Created by Hector Steven on 3/26/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//


// Review tableviews
// https://bit.ly/2FysUlv


import UIKit


class WordCell: UICollectionViewCell {
	override init(frame: CGRect) {
		super.init(frame: frame)
		setupView()
	}
	
	func setupView() {
		backgroundColor = .yellow
	
		addSubview(WordLabel)
		
		
		WordLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
		WordLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
		WordLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
		WordLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true

	}
	
	let WordLabel: UILabel = {
		let label = UILabel()
		label.text = "Test test"
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	
	
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}


class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

	let cellid = "cellId"
	let headerid = "headerid"
	let footerid = "footerid"

	override func viewDidLoad() {
		title = "Swift Twitter"
		collectionView?.backgroundColor = .white
		
		collectionView?.register(WordCell.self, forCellWithReuseIdentifier: cellid)
		
		collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: headerid)
		
		collectionView?.register(UICollectionViewCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: footerid)
	}
	
	
	////////////////////////////////////////////////////////////////////////
	
	override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 3
	}
	
	
	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellid, for: indexPath)
		cell.layer.borderWidth = 1
		cell.layer.cornerRadius = 10
		return cell
		
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: view.frame.width, height: 105)
	}
	
	
	////////////////////////////////////////////////////////////////////////
	
	override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
		
		if kind == UICollectionView.elementKindSectionHeader {
			let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: headerid, for: indexPath)
			header.backgroundColor = .green
			return header
		} else {
			let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: footerid, for: indexPath)
			footer.backgroundColor = .red
			return footer
		}
		
		
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
		return CGSize(width: view.frame.width, height: 50)
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
		return CGSize(width: view.frame.width, height: 100)
	}
	
	////////////////////////////////////////////////////////////////////////
}

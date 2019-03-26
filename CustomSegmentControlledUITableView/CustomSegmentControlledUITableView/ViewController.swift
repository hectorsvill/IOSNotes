//
//  ViewController.swift
//  CustomSegmentControlledUITableView
//
//  Created by Hector Steven on 3/26/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

//	Custom Segment Controlled UITableView User Request
// yt : https://www.youtube.com/watch?v=OF69qnOFZro&t=1030s


import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
	////////////////////////////////////////////////////////////////////////////
	
	let tableView = UITableView(frame: .zero, style: .plain)

	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return rowsToDisplay.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = UITableViewCell()
		cell.textLabel?.text = rowsToDisplay[indexPath.row]
		return cell
	}
	
	////////////////////////////////////////////////////////////////////////////
	
	let segmentedControl: UISegmentedControl = {
		let sc = UISegmentedControl(items: ["Games", "TV Shows", "Devices"])
		sc.selectedSegmentIndex = 0
		sc.addTarget(self, action: #selector(handleSegmentChange), for: .valueChanged)
		return sc
	}()
	
	@objc func handleSegmentChange () {
		print(segmentedControl.selectedSegmentIndex)
		
		switch segmentedControl.selectedSegmentIndex {
		case 0:
			rowsToDisplay = games
		case 1:
			rowsToDisplay = tvShows
		default:
			rowsToDisplay = devices
		}
		tableView.reloadData()
	}
	
	
	////////////////////////////////////////////////////////////////////////////
	
	let games = [
		"Warframe", "Pokemon Yellow Version"
	]
	
	let tvShows = [
		"The Office", "Parks And Rec", "Game of thrones"
	]
	
	let devices = ["iMac Pro", "Macbook Pro"]
	//master arr
	lazy var rowsToDisplay = tvShows
	
	////////////////////////////////////////////////////////////////////////////
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		tableView.dataSource = self
		tableView.delegate = self
		
		title = "Segmented Table View"
		view.backgroundColor = .white
		
		///////////////////////////////////
		
		let paddedStackView = UIStackView(arrangedSubviews: [segmentedControl])
		paddedStackView.layoutMargins = .init(top: 12, left: 12, bottom: 12, right: 12)
		paddedStackView.isLayoutMarginsRelativeArrangement = true

		let stackView = UIStackView(arrangedSubviews: [paddedStackView, tableView])
		stackView.axis = .vertical
		
		view.addSubview(stackView)

		///////////////////////////////////
		
		stackView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor, padding: .zero)
	}

	
	
	
	

}


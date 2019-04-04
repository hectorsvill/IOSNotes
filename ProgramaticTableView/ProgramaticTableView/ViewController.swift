//
//  ViewController.swift
//  ProgramaticTableView
//
//  Created by Hector Steven on 4/3/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
	let tableView = UITableView()
	let cellId = "cellId"
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = .white
		view.addSubview(tableView)
		tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
	}
}


extension ViewController {
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 4
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
		cell.textLabel?.text = "\(indexPath.row)"
		return cell
	}
	
}

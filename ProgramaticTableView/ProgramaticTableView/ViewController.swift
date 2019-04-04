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
		tableView.translatesAutoresizingMaskIntoConstraints = false
		
		tableView.delegate = self
		tableView.dataSource = self
		
		
		tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
		view.setupTableViewAnchor(tableView: tableView, view: view)
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

extension UIView {
	func setupTableViewAnchor(tableView: UITableView, view: UIView) {
		NSLayoutConstraint.activate([
			tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
			tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
			tableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
			tableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
			])
	}
}

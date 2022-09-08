//
//  LeftViewController.swift
//  Cocoapods
//
//  Created by kishore-pt5557 on 08/09/22.
//

import UIKit

class LeftViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .none
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
    }
}

// Data source
extension LeftViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let label = UILabel()
        label.text = "Hello"
        cell.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.anchor(top: nil, leading: nil, bottom: nil, trailing: nil, centerX: cell.centerXAnchor, centerY: cell.centerYAnchor)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    
    
    
}


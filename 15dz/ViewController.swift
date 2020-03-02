//
//  ViewController.swift
//  15dz
//
//  Created by Пользователь on 3/2/20.
//  Copyright © 2020 Пользователь. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
    }
    let color: [String] = ["red", "green", "yellow", "brown", "blue", "orange", "purple", "black", "cyan"]
    let colorUI: [UIColor] = [.red, .green, .yellow, .brown, .blue, .orange, .purple, .black, .cyan]
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return color.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = color[indexPath.row]
        cell.textLabel?.textColor = colorUI[indexPath.row]
        return cell
    }
    
    
    
}

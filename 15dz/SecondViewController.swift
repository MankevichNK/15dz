//
//  SecondViewController.swift
//  15dz
//
//  Created by Пользователь on 3/2/20.
//  Copyright © 2020 Пользователь. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var array: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let maxValue1 = 1000000
        var fb1 = 1
        var fb2 = 1
        array.append(String(1))
        while Double(fb1) + Double(fb2) <= Double(maxValue1) {
            let x = fb2
            fb2 = fb1 + fb2
            fb1 = x
            array.append(String(x))
        }
        tableView.dataSource = self
    }
}

extension SecondViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        cell!.textLabel?.text = array[indexPath.row]
        return cell!
    }
    
    
}

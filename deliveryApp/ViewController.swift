//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Elijah Silang on 1/25/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let custom_cell:RestaurantCell? = tableView.dequeueReusableCell(withIdentifier: "RestaurantCell") as? RestaurantCell
        custom_cell?.titleLabel.text = "Five Guys"
        return custom_cell ?? UITableViewCell()
    }

}


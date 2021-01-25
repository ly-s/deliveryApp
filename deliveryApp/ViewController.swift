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
    
    // function to return how many cells should be shown in the tableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    // function to edit the contents of the cells in the tableView
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let custom_cell:RestaurantCell? = tableView.dequeueReusableCell(withIdentifier: "RestaurantCell") as? RestaurantCell
        custom_cell?.titleLabel.text = "Five Guys"
        custom_cell?.tagLabel.text = "$ · American · Fast Food · Burgers"
        custom_cell?.deliveryTimeLabel.text = "20-30 Min"
        custom_cell?.ratingLabel.text = "4.8/5"
        
        return custom_cell ?? UITableViewCell()
    }

}


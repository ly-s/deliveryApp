//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Elijah Silang on 1/25/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var restArray = [
        ("Five Guys", "$ · American · Fast Food · Burger", "10-15 Min", 4),
        ("Raising Cane's", "$ · American · Fast Food · Chicken", "15-20 Min", 3.5),
        ("Whataburger", "$ · American · Fast Food · Burgers", "10-20 Min", 4.5),
        ("Red Robin", "$ · American · Gourmet · Burgers", "15-20 Min", 3.5),
        ("Burger King", "$ · American · Fast Food · Chicken", "20-30 Min", 3),
        ("McDonald's", "$ · American · Fast Food · Burgers", "15-30 Min", 3.2),
        ("Taco Bell", "$ · American · Fast Food · Tacos", "10-30 Min", 3),
    ]
    
//    var foodList = [
//        ["Burger", "Hot Dog", "French Fries"],
//        ["Cane'sChicken1", "Cane'sChicken2", "Cane'sChicken3", "Cane'sChicken4"],
//        ["WhataBurger1", "WhataBurger2", "WhataBurger3", "WhataBurger4", "WhataBurger5"],
//        ["RedBurger1", "RedBurger2", "RedFries1", "RedFries2"],
//        ["KingBurger1", "KingBurger2", "KingBurger3"],
//        ["McBurger", "McFries", "McChicken"],
//        ["BellTaco1", "BellTaco2", "BellTaco3", "BellTaco4"],
//    ] as [Any]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // function to return how many cells should be shown in the tableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restArray.count
    }
    
    // function to edit the contents of the cells in the tableView
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let custom_cell:RestaurantCell? = tableView.dequeueReusableCell(withIdentifier: "RestaurantCell") as? RestaurantCell
        custom_cell?.titleLabel.text = restArray[indexPath.row].0
        custom_cell?.tagLabel.text = restArray[indexPath.row].1
        custom_cell?.deliveryTimeLabel.text = restArray[indexPath.row].2
        custom_cell?.ratingLabel.text = String(restArray[indexPath.row].3) + "/5"
        
        return custom_cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You have selected row number \(indexPath.row)")
        let detailsVC = self.storyboard?.instantiateViewController(identifier: "DetailsViewController") as? DetailsViewController
        detailsVC?.restName = restArray[indexPath.row].0
        detailsVC?.tag = restArray[indexPath.row].1
        detailsVC?.delivery = restArray[indexPath.row].2
        detailsVC?.rating = restArray[indexPath.row].3
        
//        detailsVC?.foodMenu = (foodList[indexPath.row] as? Array<Any>)!
        
        self.navigationController?.pushViewController(detailsVC!, animated: true)
    }

}


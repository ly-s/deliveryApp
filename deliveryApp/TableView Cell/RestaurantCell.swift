//
//  RestaurantCell.swift
//  TableViewDemo
//
//  Created by Elijah Silang on 1/25/21.
//

import UIKit

class RestaurantCell: UITableViewCell {
    //title label included
    @IBOutlet weak var titleLabel: UILabel!
    
    //tag label included
    @IBOutlet weak var tagLabel: UILabel!
    
    
    //delivery time label included
    @IBOutlet weak var deliveryTimeLabel: UILabel!
    
    //rating label included
    @IBOutlet weak var ratingLabel: UILabel!
    
    //food name label included
    @IBOutlet weak var foodNameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

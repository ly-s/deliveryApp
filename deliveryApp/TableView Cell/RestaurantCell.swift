//
//  RestaurantCell.swift
//  TableViewDemo
//
//  Created by Elijah Silang on 1/25/21.
//

import UIKit

class RestaurantCell: UITableViewCell {
    //title label
   
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

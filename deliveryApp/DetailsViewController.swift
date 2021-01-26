//
//  DetailsViewController.swift
//  deliveryApp
//
//  Created by Elijah Silang on 1/26/21.
//

import UIKit

class DetailsViewController: UIViewController {
    
    //including parameters from previous screen
    @IBOutlet weak var restNameLabel: UILabel!
    @IBOutlet weak var tagLabel: UILabel!
    @IBOutlet weak var deliveryLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    var restName: String?
    var tag: String?
    var delivery: String?
    var rating: Double?
    
    var foodMenu: Array<Any>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        restNameLabel.text = restName ?? ""
        tagLabel.text = tag ?? ""
        deliveryLabel.text = delivery ?? ""
        ratingLabel.text = String(rating!) + "/5"
        
        // Do any additional setup after loading the view.
    }
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return foodMenu!.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let foodCell:RestaurantCell? = tableView.dequeueReusableCell(withIdentifier: "foodName") as? RestaurantCell
//
//        foodCell?.foodNameLabel.text = foodMenu?[indexPath.row] as? String
//
//
//        return foodCell ?? UITableViewCell()
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

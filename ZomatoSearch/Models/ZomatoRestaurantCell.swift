//
//  ZomatoRestaurantCell.swift
//  ZomatoSearch
//
//  Created by Amirthy Tejeshwar on 10/09/19.
//  Copyright © 2019 Amirthy Tejeshwar. All rights reserved.
//

import UIKit

class ZomatoRestaurantCell: UITableViewCell {

    @IBOutlet weak var restaurantTitle: UIView!
    @IBOutlet weak var ratingColor: UIView!
    @IBOutlet weak var ratingValue: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

//
//  RestaurantTableViewCell.swift
//  FoodPin
//
//  Created by Admin on 25.04.16.
//  Copyright © 2016 Sviridov. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLable:UILabel!
    @IBOutlet weak var locationLable:UILabel!
    @IBOutlet weak var typeLable:UILabel!
    @IBOutlet weak var thumbnailImageView:UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbnailImageView.layer.cornerRadius = 30.0
        thumbnailImageView.clipsToBounds = true
        
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

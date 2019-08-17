//
//  CityCell.swift
//  edtech
//
//  Created by Kuku Kuku on 17/08/2019.
//  Copyright © 2019 Kuku Kuku. All rights reserved.
//

import UIKit

class CityCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupWithCity(_ city: String){
        label.text = city
    }

}

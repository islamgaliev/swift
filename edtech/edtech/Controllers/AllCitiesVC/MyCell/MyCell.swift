//
//  MyCell.swift
//  edtech
//
//  Created by Kuku Kuku on 27/08/2019.
//  Copyright © 2019 Kuku Kuku. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var moreInfo: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCellForSub(_ sub: Subjects) {
        self.titleLabel.text = sub.title
        self.pictureImageView.image = UIImage(named: sub.iamageName ?? "")
        self.nameLabel.text = sub.subName
        self.moreInfo.text = sub.subInfo
    }
    
}

//
//  StreetTableViewCell.swift
//  Beat Road 1.0
//
//  Created by Apple on 8/4/20.
//  Copyright © 2020 Jorge Angel. All rights reserved.
//

import UIKit

class StreetTableViewCell: UITableViewCell {

    @IBOutlet weak var streetLabel: UILabel!
    
    @IBOutlet weak var streetImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

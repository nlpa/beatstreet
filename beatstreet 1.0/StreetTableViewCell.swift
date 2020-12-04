//
//  ReportViewController.swift
//  Beat Road 1.0
//
//  Created by Apple on 7/29/20.
//  Copyright © 2020 Sal Abuali, Jorge Angel, Natalie Lampa, Jonathan E. All rights reserved.
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

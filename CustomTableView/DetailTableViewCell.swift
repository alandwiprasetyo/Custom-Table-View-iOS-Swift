//
//  DetailTableViewCell.swift
//  CustomTableView
//
//  Created by Alan Dwi Prasetyo on 2/28/17.
//  Copyright © 2017 Alan Dwi Prasetyo. All rights reserved.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
    
    @IBOutlet weak var fieldLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

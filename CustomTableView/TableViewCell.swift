//
//  TableViewCell.swift
//  CustomTableView
//
//  Created by Alan Dwi Prasetyo on 2/5/17.
//  Copyright © 2017 Alan Dwi Prasetyo. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var foodName: UILabel!

    @IBOutlet weak var locationStore: UILabel!
    @IBOutlet weak var priceFood: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

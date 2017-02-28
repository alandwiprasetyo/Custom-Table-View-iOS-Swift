//
//  Restaurant.swift
//  CustomTableView
//
//  Created by Alan Dwi Prasetyo on 2/13/17.
//  Copyright © 2017 Alan Dwi Prasetyo. All rights reserved.
//

import Foundation

class Restaurant{
    

    var name:String
    var price:String = ""
    var location = ""
    var image = ""
    var isVisible = false
    
    init(name:String, location: String, price: String, image: String, isVisible: Bool) {
        self.name = name
        self.price = price
        self.location = location
        self.image = image
        self.isVisible = isVisible
    }
}

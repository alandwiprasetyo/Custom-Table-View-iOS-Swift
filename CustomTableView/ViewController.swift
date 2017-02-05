//
//  ViewController.swift
//  CustomTableView
//
//  Created by Alan Dwi Prasetyo on 2/5/17.
//  Copyright © 2017 Alan Dwi Prasetyo. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var nameFood = ["Chicken Spicy","Burger Extra Keju", "Ayam Goreng", "Bebek goreng", "Ayam Bakar Paket", "Ayam Geprek", "Nasi Telur"]
    var placeName = ["Super Sambal","McD Jombor", "KFC Sudirman", "Bu Bibit", "Ayam Penyet Suroboyo","Pak Kobis","Burjo Putra sunda"]
    var price = ["Rp. 25.000","Rp. 34.000", "Rp.31.000", "Rp. 26.000", "Rp. 24.000", "Rp. 22.000","Rp. 10.000"]
    var imageStore = ["barrafina","barrafina","bourkestreetbakery","cafedeadend", "cafeloisl","caskpubkitchen","caskpubkitchen"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //table view
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameFood.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentification = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentification, for: indexPath) as! TableViewCell
        //configuration cell
        cell.foodName.text = nameFood[indexPath.row]
        cell.priceFood.text = price[indexPath.row]
        cell.locationStore.text = placeName[indexPath.row]
        cell.foodImageView.image = UIImage(named: imageStore[indexPath.row])
        return cell
    }
}


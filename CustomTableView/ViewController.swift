//
//  ViewController.swift
//  CustomTableView
//
//  Created by Alan Dwi Prasetyo on 2/5/17.
//  Copyright © 2017 Alan Dwi Prasetyo. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    
    var restaurants:[Restaurant] = [
        Restaurant(name: "Chicken Spacy", location: "Super Sambal", price: "Rp. 25.000", image: "barrafina", isVisible: true),
        Restaurant(name: "Burger Extra Keju", location: "McD Jombor", price: "Rp. 34.000", image: "barrafina", isVisible: false),
        Restaurant(name: "Ayam Goreng", location: "KFC Sudirman", price: "Rp. 31.000", image: "bourkestreetbakery", isVisible: false),
        Restaurant(name: "Bebek goreng", location: "Bu Bibit", price: "Rp. 26.000", image: "cafedeadend", isVisible: false),
        Restaurant(name: "Ayam Bakar Paket", location: "Ayam Penyet Suroboyo", price: "Rp. 24.000", image: "cafeloisl", isVisible: false),
        Restaurant(name: "Ayam Geprek", location: "Pak Kobis", price: "Rp. 22.000", image: "caskpubkitchen", isVisible: false),
        Restaurant(name: "Nasi Telur", location: "Burjo Putra sunda", price: "Rp. 10.000", image: "caskpubkitchen", isVisible: false),
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        title = "Restaurants"
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
        return restaurants.count
    }
    
    // set data for per item
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentification = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentification, for: indexPath) as! TableViewCell
        //configuration cell
        cell.foodName.text = restaurants[indexPath.row].name
        cell.priceFood.text = restaurants[indexPath.row].price
        cell.locationStore.text = restaurants[indexPath.row].location
        cell.foodImageView.image = UIImage(named: restaurants[indexPath.row].image)
        
        //Circular Image
        //cell.foodImageView.layer.cornerRadius = 25.0
        //cell.foodImageView.clipsToBounds = true
        return cell
    }
    
    // action handler per item
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // DIALOG

//        let optionMenu = UIAlertController(title: nil, message: "Do you want to order \(restaurants[indexPath.row].name) ?", preferredStyle: .actionSheet) // action sheet dialog
        
//        let positiveCallActionhandler = {(action:UIAlertAction!) -> Void in
//            let alertMessage = UIAlertController(title:"Service Unavailable", message: "Sorry, the call feature is not available yet. Please retry later.", preferredStyle: .alert)
//            alertMessage.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
//            self.present(alertMessage, animated: true, completion: nil)
//        }
//        
//        let checkInAction = {(action: UIAlertAction) -> Void in
//            let cell = tableView.cellForRow(at: indexPath)
//            cell?.accessoryType = self.restaurants[indexPath.row].isVisible ? .none : .checkmark
//            self.restaurants[indexPath.row].isVisible = !self.restaurants[indexPath.row].isVisible
//        }
//        
//        let positive = UIAlertAction(title: "Yes, I want to order", style: .default, handler: positiveCallActionhandler)
//        let checkIn = UIAlertAction(title: self.restaurants[indexPath.row].isVisible ? "Unheck": "Check", style: .default, handler: checkInAction)
//        let cancel = UIAlertAction(title: "No", style: .cancel, handler: nil)
//        let delete = UIAlertAction(title: "Delete", style: .destructive, handler: {(action:UIAlertAction) -> Void in
//            self.restaurants.remove(at: indexPath.row)
//            tableView.deleteRows(at: [indexPath], with: .top)
//        })
//        optionMenu.addAction(cancel)
//        optionMenu.addAction(checkIn)
//        optionMenu.addAction(delete)
//        optionMenu.addAction(positive)
//        present(optionMenu, animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.restaurants.remove(at: indexPath.row)
        }
        
        tableView.reloadData()
        
        
        print("Total item: \(restaurants.count)")
        for restaurant in restaurants {
            print(restaurant.name)
        }
    }
    
    
    // passing data to detail = same as Intent in android
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showFoodDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! DetailViewController;
                destinationController.restaurant = self.restaurants[indexPath.row]
            }
        }
    }
    
}


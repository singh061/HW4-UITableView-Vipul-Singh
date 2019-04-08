//
//  ItemViewController.swift
//  HW4-UITableView-Vipul Singh
//
//  Created by Vipul Singh on 4/7/19.
//  Copyright © 2019 Vipul Singh. All rights reserved.
//
//Vips
import UIKit
class ItemsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var tableCell: TableCell!
    
    //add in the names of the each of the pictures
    var locationNames = [("Buckingham Palace"), ("The Effiel Tower"), ("The Grand Canyon"),
                         ("Windsor Castle"), ("Empire State Building")]
    
    var imageTitles = [UIImage(named: "bucking"), UIImage(named: "eiffel tower"), UIImage(named: "grandcanyon"), UIImage(named: "windsor"), UIImage(named: "empire")]
    
    //    func numberOfSections(in tableView: UITableView) -> Int {
    //        return locationNames.count
    //    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locationNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let myCell = tableView.dequeueReusableCell(withIdentifier: "myCoolCell",for: indexPath as IndexPath) as! TableCell
        
        
        //first text
        myCell.label.text = self.locationNames[indexPath .row]
        
        //than actual images
        myCell.photo.image = self.imageTitles[indexPath .row]
        
        return myCell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}


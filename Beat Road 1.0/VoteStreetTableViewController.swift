//
//  VoteStreetTableViewController.swift
//  Beat Road 1.0
//
//  Created by Apple on 8/4/20.
//  Copyright © 2020 Jorge Angel. All rights reserved.
//

import UIKit

class VoteStreetTableViewController: UITableViewController // view controller holding some basic preset data as examples
{
    var streets = [Street]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let street1 = Street(name: "1) Pulaski & Foster", image: UIImage(named: "street1"), votes: 108)
          
        let street2 = Street(name: "2) Lake & Laramie", image: UIImage(named: "street2"), votes: 87)
        
        let street3 = Street(name: "3) Lawrence & Central", image: UIImage(named: "street3"), votes: 46)
        
        let street4 = Street(name: "4) Irving Park & Austin", image: UIImage(named: "street4"), votes: 28)
        
        let street5 = Street(name: "5) 26th & Cicero", image: UIImage(named: "street5"), votes: 18)
        
        let street6 = Street(name: "Lake & Laramie", image: UIImage(named: "street6"), votes: 4)
        
        
    
        streets = [street1, street2, street3, street4 , street5 , street6] // used to append our pre-SET data.
        
        
        
        
        
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return streets.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell // cell function to display on screen cell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! StreetTableViewCell
        let street = streets[indexPath.row]          // will tie the street class to the data
        cell.streetLabel.text = street.name         // will display the street names stored in data
        cell.streetImageView.image = street.image! // will display the images stores in data
        // Configure the cell...
        
        

        return cell
    } // [tableView END]
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}// [CLASS END]

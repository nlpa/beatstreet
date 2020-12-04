//
//  ReportViewController.swift
//  Beat Street 1.0
//
//  Created by Apple on 7/29/20.
//  Copyright © 2020 Sal Abuali, Jorge Angel, Natalie Lampa, Jonathan E. All rights reserved.
//


import UIKit
import Firebase

class ViewController: UIViewController {
    
//    let ref = Database.database().reference(withPath: "reports")

    //---------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let rootRef = Database.database().reference()

    }
    //---------------------------------
    //FUNCTIONS/ACTIONS

    
    @IBAction func jhkljkhl(_ sender: UIButton) {
        UIApplication.shared.open(URL(string:"https://www.chicago.gov/city/en/about/wards.html")! as URL, options: [:], completionHandler: nil)
        
    }
    
    
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue) { } // func used to revert setting screen to menu
    
    
    
    
    
    
    
    
    
}// [CLASS VIEW CONTROLLER END]


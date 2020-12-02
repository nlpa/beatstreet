//
//  ReportViewController.swift
//  Beat Road 1.0
//
//  Created by Apple on 7/29/20.
//  Copyright © 2020 Sal Abuali, Jorge Angel, Natalie, Jonathan. All rights reserved.
//

import UIKit


class ReportViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //--------------------------------
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    // To upload Images or to take a pic with the camera
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func chooseImage(_ sender: Any)
    {
        let imagePickerController = UIImagePickerController()
        imagePickerController.delegate = self
        
        let actionSheet = UIAlertController (title: "Photo Source", message: "Choose a source", preferredStyle: .actionSheet)
        let cameraAction = UIAlertAction(title: "Camera", style: .default) { (action) in
            if UIImagePickerController.isSourceTypeAvailable(.camera) {
                imagePickerController.sourceType = .camera
                self.present(imagePickerController, animated: true)
            } else {
                print("no camera")
            }
        }
        
        let libraryAction = UIAlertAction(title: "Photo Library", style: .default) { (action) in
            imagePickerController.sourceType = .photoLibrary
            self.present(imagePickerController, animated: true)
            
        }
        
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler:nil))
        
        actionSheet.addAction(cameraAction)
        actionSheet.addAction(libraryAction)
        present(actionSheet, animated: true)

        
       // let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
       
        
}
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

        
        picker.dismiss(animated: true)
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
             {
            imageView.image = image
        }
        else{
            print("no image")

        }
    }
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController)
    {
        picker.dismiss(animated: true, completion: nil)
        
    }
    
    //-------------------------------
    //-------------------------------
    @IBOutlet weak var TitleScreenLable: UILabel! // label will switch fron beat street to bestowed road when slectd
    
    @IBOutlet weak var segue: UISegmentedControl! // stands as the segue selction for beat street or bestowed road
    
    @IBAction func segueChangeSelect(_ sender: Any) // when one is selected the title screen lable will change
    {
        
        
        if segue.selectedSegmentIndex == 0 // zero for option 1 "Report a Street"
        {
            TitleScreenLable.text = "Report A Street"
        }
        
        if segue.selectedSegmentIndex == 1 // one for option 2 "Submit Bestowed Road"
        {
            TitleScreenLable.text = "Submit A Bestowed Road"
        }
        
        
    }// [segueChangeSelect END]
    
    
    @IBAction func onWardButtonPress(_ sender: UIButton) // button used to guide users to alderman website if help is needed ("ward num")
    {
        UIApplication.shared.open(URL(string:"https://www.chicago.gov/city/en/depts/mayor/iframe/lookup_ward_and_alderman.html")! as URL, options: [:], completionHandler: nil)
    } // [onWardButtonPress end]
    
 
    @IBAction func wardDismissInfo(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}// [class end]

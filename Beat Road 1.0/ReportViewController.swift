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
        
        actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: {(action:UIAlertAction) in imagePickerController.sourceType = .camera
            self.present (imagePickerController , animated: true, completion: nil)}))
        
        if UIImagePickerController.isSourceTypeAvailable(.camera)
        {
            imagePickerController.sourceType = .camera
            self.present(imagePickerController, animated: true, completion: nil)
        }
        
        else
        {
            print ("Camera not available")
        }

        actionSheet.addAction(UIAlertAction(title: "Photo Library", style: .default, handler: {(action:UIAlertAction) in imagePickerController.sourceType = .photoLibrary
            self.present (imagePickerController , animated: true, completion: nil)}))
        
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        self.present(actionSheet, animated: true, completion: nil)
        }
        
    func imagePickerController( picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: Any])
    {
        let image = info[UIImagePickerController.InfoKey.originalImage.rawValue] as! UIImage
         imageView.image = image
        picker.dismiss(animated: true, completion: nil)

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
        
        
        if segue.selectedSegmentIndex == 0 {
        TitleScreenLable.text = "Report A Street"
        }
        
        if segue.selectedSegmentIndex == 1 {
            TitleScreenLable.text = "Submit A Bestowed Road"
        }
    
        
    }
    
    
@IBAction func onWardButtonPress(_ sender: UIButton) {
UIApplication.shared.open(URL(string:"https://www.chicago.gov/city/en/depts/mayor/iframe/lookup_ward_and_alderman.html")! as URL, options: [:], completionHandler: nil)
    } // [onWardButtonPress end]
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}// [class end]

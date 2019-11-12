//
//  Alarm12ViewController.swift
//  CapstoneFinal
//
//  Created by Faith Duval on 11/5/19.
//  Copyright © 2019 Ryan Duval. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore
import FirebaseDatabase

class Alarm12ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    //Declaring Utilites reference
    let util = Utilities()
    
    //Declaring database reference
    let db = Firestore.firestore()
    
    //Declaring varaible to hold URL
    var url : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    datePicker.datePickerMode = UIDatePicker.Mode.time
    }
    
    //Declaring Outlets
    @IBOutlet weak var MedName: UITextField!
    @IBOutlet weak var AmountMed: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var myImg: UIImageView!
    @IBOutlet weak var errorLabel: UILabel!
    
    
    //Action when Add Photo Button is tapped
    @IBAction func addPic(_ sender: Any) {
        add()
    
    }
    
    //Action when Set Button is tapped
    @IBAction func SetButtonTapped(_ sender: Any) {
        
        //Sends data to firebase if all fields are filled in, else shows error message to user
        if (MedName.text?.trimmingCharacters(in: .whitespacesAndNewlines) != "" && AmountMed.text?.trimmingCharacters(in: .whitespacesAndNewlines) != "" && myImg.image != nil){
            let dateFormatter = DateFormatter()
            dateFormatter.timeStyle = .short
            let strDate = dateFormatter.string(from: datePicker.date)
            
            
           
            db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 12").document("Alarm 12 Info").setData(["Medication": MedName.text!, "Amount": AmountMed.text!, "Set Date": strDate, "URL": url])
        
        let homeViewController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
        
        view.window?.rootViewController = homeViewController
        view.window?.makeKeyAndVisible()
        }else{
            errorLabel.alpha = 1
        }
    }
    
    
    //Action when Cancel Button is tapped
    @IBAction func CancelButtonTapped(_ sender: Any) {
        let homeViewController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
        
        view.window?.rootViewController = homeViewController
        view.window?.makeKeyAndVisible()
    }
    
    //Function to add selected image to UIImageView
    func add(){
            if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
           
        }
        
    }
    
//Converting UImage to URl and saving locally
func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
      
        
        if let pickedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
           myImg.contentMode = .scaleToFill
           myImg.image = pickedImage
            if let image = myImg.image{
                if let data = image.pngData() {
                    let filename = self.util.getDocumentsDirectory().appendingPathComponent("copy.png")
                    url = filename.absoluteString
                    
                    try? data.write(to: filename)
                }
            }
            
    }
        picker.dismiss(animated: true, completion: nil)

    }
}



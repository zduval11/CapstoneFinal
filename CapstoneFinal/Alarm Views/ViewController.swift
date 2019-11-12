//
//  ViewController.swift
//  CapstoneFinal
//
//  Created by Faith Duval on 10/13/19.
//  Copyright © 2019 Ryan Duval. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore
import FirebaseDatabase

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    let util = Utilities()
    let db = Firestore.firestore()
    var url : String = ""
    let trans = SignUpViewController()
    

    override func viewDidLoad() {
          super.viewDidLoad()
          // Do any additional setup after loading the view.
          datePicker.datePickerMode = UIDatePicker.Mode.time
        

    
    }
    
    @IBOutlet weak var myImg: UIImageView!
    
    @IBOutlet weak var MedName: UITextField!
    
    @IBOutlet weak var AmountMed: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    @IBAction func addPic(_ sender: Any) {
        
         add()

    }
    
    
    func add(){
            if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.photoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
           
        }
        
    }
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
            }       }
        picker.dismiss(animated: true, completion: nil)

    }
 
    
    @IBAction func SetbuttonTapped(_ sender: UIButton) {
         //_myImg: myImg.image!
        
       
        if(MedName.text?.trimmingCharacters(in: .whitespacesAndNewlines) != "" && AmountMed.text?.trimmingCharacters(in: .whitespacesAndNewlines) != "" && myImg.image != nil){
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = .short
        let strDate = dateFormatter.string(from: datePicker.date)
        //util.scheduleNotification(_fireDate: strDate ,_med: MedName.text!,_amount: AmountMed.text!)
        
       
        db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 1").document("Alarm 1 Info").setData(["Medication": MedName.text!, "Amount": AmountMed.text!, "Set Date": strDate, "URL": url])
    
    let homeViewController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
    
    view.window?.rootViewController = homeViewController
    view.window?.makeKeyAndVisible()
            }else{
            errorLabel.alpha = 1
        }
    
    
    }
    
    @IBAction func CancelbuttonTapped(_ sender: UIButton) {
        NSLog ("Alarm Cancel button tapped");
         
               
               let homeViewController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
               
               view.window?.rootViewController = homeViewController
               view.window?.makeKeyAndVisible()
               
           
        
        
        
    }
    

}















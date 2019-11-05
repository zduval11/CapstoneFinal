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
    let log = LoginViewController()

    override func viewDidLoad() {
          super.viewDidLoad()
          // Do any additional setup after loading the view.
          datePicker.datePickerMode = UIDatePicker.Mode.time
        

    
    }
    
    @IBOutlet weak var myImg: UIImageView!
    
    @IBOutlet weak var MedName: UITextField!
    
    @IBOutlet weak var AmountMed: UITextField!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    

    
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
       }
picker.dismiss(animated: true, completion: nil)

    }
    
  

    @IBAction func SetbuttonTapped(_ sender: UIButton) {
        
        util.scheduleNotification(datePicker,_med: MedName,_amount: AmountMed, _myImg: myImg.image!)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss"
        dateFormatter.timeZone = .current
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        
       let strDate = dateFormatter.string(from: datePicker.date)
        
        db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 1").document("Alarm 1 Info").setData(["Medication": MedName.text!, "Amount": AmountMed.text!, "Set Date": strDate])
    }
    
    @IBAction func CancelbuttonTapped(_ sender: UIButton) {
        NSLog ("Alarm Cancel button tapped");
    }
    

}















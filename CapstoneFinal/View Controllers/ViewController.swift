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

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

      override func viewDidLoad() {
          super.viewDidLoad()
          // Do any additional setup after loading the view.
          datePicker.datePickerMode = UIDatePicker.Mode.time
      
      //let db = Firestore.firestore()
      
    //db.collection("Synthroid Alarm").addDocument(data: ["AlarmName": [age]])
      
      }
    
    @IBOutlet weak var myImg: UIImageView!
    
    @IBOutlet weak var MedName: UITextField!
    
    @IBOutlet weak var AmountMed: UITextField!
    
    @IBAction func addPic(_ sender: Any) {
        
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
    
  
    
    func scheduleNotification(_ fireDate: UIDatePicker, _med: UITextField, _amount: UITextField) {
        
           
           let content = UNMutableNotificationContent()
           
           content.title = "TAKE YOUR MEDICATION"
           
           content.body = _med.text! + " " + _amount.text!
           content.sound = UNNotificationSound.init(named:UNNotificationSoundName(rawValue: "sound.caf"))
           
           //let url = Bundle.main.url(forResource: "Image/med", withExtension: "jpg")
        if let attachment = UNNotificationAttachment.create(identifier: "identifier", image: myImg.image!, options: nil){
           
           content.attachments = [attachment]
        
           }
        
        
           
          let  dateComponents = Calendar.current.dateComponents([.year, .month, .day, .hour, .minute], from: fireDate.date )
           
           
           let trigger = UNCalendarNotificationTrigger(
               dateMatching: dateComponents, repeats: true)
           
           let identifier = "alarm"
           let request = UNNotificationRequest(identifier: identifier,
                                               content: content, trigger: trigger)
           
           // Schedule the request with the system.
           let notificationCenter = UNUserNotificationCenter.current()
           notificationCenter.add(request) { (error) in
               if error != nil {
                   // Handle any errors.
               }
           }
           
                
          
           
       }

    @IBOutlet weak var datePicker: UIDatePicker!
    


    @IBAction func SetbuttonTapped(_ sender: UIButton) {
        
        self.scheduleNotification(datePicker,_med: MedName,_amount: AmountMed)
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = .current
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        
        let strDate = dateFormatter.string(from: datePicker.date)
        
        NSLog ("Alarm set button tapped: " + strDate);
        
    }
    


    @IBAction func CancelbuttonTapped(_ sender: UIButton) {
        NSLog ("Alarm Cancel button tapped");
    }
    
   

}
extension UNNotificationAttachment {

    static func create(identifier: String, image: UIImage, options: [NSObject : AnyObject]?) -> UNNotificationAttachment? {
        let fileManager = FileManager.default
        let tmpSubFolderName = ProcessInfo.processInfo.globallyUniqueString
        let tmpSubFolderURL = URL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent(tmpSubFolderName, isDirectory: true)
        do {
            try fileManager.createDirectory(at: tmpSubFolderURL, withIntermediateDirectories: true, attributes: nil)
            let imageFileIdentifier = identifier+".png"
            let fileURL = tmpSubFolderURL.appendingPathComponent(imageFileIdentifier)
            guard let imageData = image.pngData() else {
                return nil
            }
            try imageData.write(to: fileURL)
            let imageAttachment = try UNNotificationAttachment.init(identifier: imageFileIdentifier, url: fileURL, options: options)
            return imageAttachment
        } catch {
            print("error " + error.localizedDescription)
        }
        return nil
    }
}

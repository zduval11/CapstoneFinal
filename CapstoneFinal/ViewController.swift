//
//  ViewController.swift
//  CapstoneFinal
//
//  Created by Faith Duval on 10/13/19.
//  Copyright © 2019 Ryan Duval. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        datePicker.datePickerMode = UIDatePicker.Mode.time
    }

    func scheduleNotification(_ fireDate: UIDatePicker) {
           let content = UNMutableNotificationContent()
           content.title = "TAKE YO MEDS!"
           content.body = "Synthroid 10 mg!"
           content.sound = UNNotificationSound.init(named:UNNotificationSoundName(rawValue: "sound.caf"))
           
           let url = Bundle.main.url(forResource: "Image/med", withExtension: "jpg")
           if let attachment = try? UNNotificationAttachment(identifier: "alarm", url: url!, options: nil ){
           
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
        
        self.scheduleNotification(datePicker)
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


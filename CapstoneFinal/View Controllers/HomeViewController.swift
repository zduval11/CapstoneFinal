//
//  HomeViewController.swift
//  CapstoneFinal
//
//  Created by Faith Duval on 10/13/19.
//  Copyright © 2019 Ryan Duval. All rights reserved.
//

import UIKit
import FirebaseFirestore
import Firebase
import FirebaseDatabase

class HomeViewController: UIViewController {
    
    let db = Firestore.firestore()
    let util = Utilities()
    
    
    @IBOutlet weak var edit1: UIButton!
   
    @IBAction func edit1(_ sender: Any) {
        
    }
    
    @IBOutlet weak var edit2: UIButton!
    
    @IBOutlet weak var edit3: UIButton!
    
    @IBOutlet weak var edit4: UIButton!
    
    
    @IBOutlet weak var edit5: UIButton!
    
    
    @IBOutlet weak var edit6: UIButton!
    
    @IBOutlet weak var edit7: UIButton!
    
    
    @IBOutlet weak var edit8: UIButton!
    
    
    @IBOutlet weak var edit9: UIButton!
    
    
    @IBOutlet weak var edit10: UIButton!
    
    
    
    @IBOutlet weak var edit11: UIButton!
    
    
    @IBOutlet weak var edit12: UIButton!
    
    
    
    @IBOutlet weak var alarm1: UILabel!
    
    
    
    @IBOutlet weak var alarm2: UILabel!
    
    
    
    
    @IBOutlet weak var alarm3: UILabel!
    
    
    
    
    @IBOutlet weak var alarm4: UILabel!
    
    
    
    
    @IBOutlet weak var alarm5: UILabel!
    
    
    
    @IBOutlet weak var alarm6: UILabel!
    
    
    
    @IBOutlet weak var alarm7: UILabel!
    
    
    
    
    @IBOutlet weak var alarm8: UILabel!
    
    
    @IBOutlet weak var alarm9: UILabel!
    
    
    
    @IBOutlet weak var alarm10: UILabel!
    
    
    @IBOutlet weak var alarm11: UILabel!
    
    @IBOutlet weak var alarm12: UILabel!
    
    @IBAction func alarm1switch(_ sender: Any) {
    
       
    
    
    
    }
    
    @IBOutlet weak var switch1: UISwitch!
    
    
    
    
       func setUpElements(){
        Utilities.styleFilledButton(edit1)
        Utilities.styleFilledButton(edit2)
        Utilities.styleFilledButton(edit3)
        Utilities.styleFilledButton(edit4)
        Utilities.styleFilledButton(edit5)
        Utilities.styleFilledButton(edit6)
        Utilities.styleFilledButton(edit7)
        Utilities.styleFilledButton(edit8)
        Utilities.styleFilledButton(edit9)
        Utilities.styleFilledButton(edit10)
        Utilities.styleFilledButton(edit11)
        Utilities.styleFilledButton(edit12)

       

    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements();
    
 
 
    
}
    
    override func viewDidAppear(_ animated: Bool) {
        
           // Get Alarm 1
           let docRef = db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 1").document("Alarm 1 Info")
           docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
                NSLog("Document data: \(dataDescription)")
            } else {
                NSLog("Document Doesn't Exist")
            }
              
            
            while document!.exists{
            let date: String = document?.get("Set Date") as! String
             let med: String = document?.get("Medication") as! String
            let amount: String = document?.get("Amount") as! String
                let url: String = document?.get("URL") as! String
            
                self.util.scheduleNotification(_fireDate: date, _med: med, _amount: amount, _url: url )
              
            }
            
        }
        // End Alarm 1
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    }
    

}

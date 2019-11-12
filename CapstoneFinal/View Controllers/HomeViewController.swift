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
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var edit1: UIButton!
    
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
    
    @IBAction func d1(_ sender: Any) {
        
        db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 1").document("Alarm 1 Info").delete()
        
           let docRef = db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 1").document("Alarm 1 Info")
           docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
                NSLog("Document data: \(dataDescription)")
            } else {
                NSLog("Document Doesn't Exist")
            }
              
            
            if document!.exists == false{
            
            self.alarm1.text = "Not Set"
              
            }
            
        }

        
    }
    
        
    @IBAction func d2(_ sender: Any) {
        
        db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 2").document("Alarm 2 Info").delete()
        
           let docRef = db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 2").document("Alarm 2 Info")
           docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
                NSLog("Document data: \(dataDescription)")
            } else {
                NSLog("Document Doesn't Exist")
            }
              
            
            if document!.exists == false{
            
            self.alarm2.text = "Not Set"
              
            }
            
        }
    }
    
    
    @IBAction func d3(_ sender: Any) {
        db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 3").document("Alarm 3 Info").delete()
        
           let docRef = db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 3").document("Alarm 3 Info")
           docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
                NSLog("Document data: \(dataDescription)")
            } else {
                NSLog("Document Doesn't Exist")
            }
              
            
            if document!.exists == false{
            
            self.alarm3.text = "Not Set"
              
            }
            
        }
    }
    
    
    @IBAction func d4(_ sender: Any) {
        
        db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 4").document("Alarm 4 Info").delete()
        
           let docRef = db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 4").document("Alarm 4 Info")
           docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
                NSLog("Document data: \(dataDescription)")
            } else {
                NSLog("Document Doesn't Exist")
            }
              
            
            if document!.exists == false{
            
            self.alarm4.text = "Not Set"
              
            }
            
        }
    }
    
    
    @IBAction func d5(_ sender: Any) {
        
        db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 5").document("Alarm 5 Info").delete()
        
           let docRef = db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 5").document("Alarm 5 Info")
           docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
                NSLog("Document data: \(dataDescription)")
            } else {
                NSLog("Document Doesn't Exist")
            }
              
            
            if document!.exists == false{
            
            self.alarm5.text = "Not Set"
              
            }
            
        }
    }
    
    
    @IBAction func d6(_ sender: Any) {
        
        db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 6").document("Alarm 6 Info").delete()
        
           let docRef = db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 6").document("Alarm 6 Info")
           docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
                NSLog("Document data: \(dataDescription)")
            } else {
                NSLog("Document Doesn't Exist")
            }
              
            
            if document!.exists == false{
            
            self.alarm6.text = "Not Set"
              
            }
            
        }
    }
    
    
    @IBAction func d7(_ sender: Any) {
        
        db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 7").document("Alarm 7 Info").delete()
        
           let docRef = db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 7").document("Alarm 7 Info")
           docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
                NSLog("Document data: \(dataDescription)")
            } else {
                NSLog("Document Doesn't Exist")
            }
              
            
            if document!.exists == false{
            
            self.alarm7.text = "Not Set"
              
            }
            
        }
    }
    
    
    @IBAction func d8(_ sender: Any) {
        
        db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 8").document("Alarm 8 Info").delete()
        
           let docRef = db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 8").document("Alarm 8 Info")
           docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
                NSLog("Document data: \(dataDescription)")
            } else {
                NSLog("Document Doesn't Exist")
            }
              
            
            if document!.exists == false{
            
            self.alarm8.text = "Not Set"
              
            }
            
        }
    }
    
    
    @IBAction func d9(_ sender: Any) {
        
        db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 9").document("Alarm 9 Info").delete()
        
           let docRef = db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 9").document("Alarm 9 Info")
           docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
                NSLog("Document data: \(dataDescription)")
            } else {
                NSLog("Document Doesn't Exist")
            }
              
            
            if document!.exists == false{
            
            self.alarm9.text = "Not Set"
              
            }
            
        }
    }
    
    
    @IBAction func d10(_ sender: Any) {
        
        db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 10").document("Alarm 10 Info").delete()
        
           let docRef = db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 10").document("Alarm 10 Info")
           docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
                NSLog("Document data: \(dataDescription)")
            } else {
                NSLog("Document Doesn't Exist")
            }
              
            
            if document!.exists == false{
            
            self.alarm10.text = "Not Set"
              
            }
            
        }
    }
    
    
    @IBAction func d11(_ sender: Any) {
        
        db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 11").document("Alarm 11 Info").delete()
        
           let docRef = db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 11").document("Alarm 11 Info")
           docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
                NSLog("Document data: \(dataDescription)")
            } else {
                NSLog("Document Doesn't Exist")
            }
              
            
            if document!.exists == false{
            
            self.alarm11.text = "Not Set"
              
            }
            
        }
    }
    
    
    @IBAction func d12(_ sender: Any) {
        
        db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 12").document("Alarm 12 Info").delete()
        
           let docRef = db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 12").document("Alarm 12 Info")
           docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
                NSLog("Document data: \(dataDescription)")
            } else {
                NSLog("Document Doesn't Exist")
            }
              
            
            if document!.exists == false{
            
            self.alarm12.text = "Not Set"
              
            }
            
        }
    }
    
    
    
    
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
        
        //Get Name Header
           let header = db.collection("users").document(Auth.auth().currentUser!.uid).collection("User Info").document("Data")
           header.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription13 = document.data().map(String.init(describing:)) ?? "nil"
                NSLog("Document data: \(dataDescription13)")
            } else {
                NSLog("Document Doesn't Exist")
            }
              
            
            if document!.exists{
            let name: String = document?.get("firstname") as! String
            
            
            self.name.text = "Hello," + " " + name + "!"
              
            }else{
                self.name.text = "Hello!"
            }
            
        }
        
        
        
        
        
        
        
        // Get Alarm 1
           let docRef = db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 1").document("Alarm 1 Info")
           docRef.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription = document.data().map(String.init(describing:)) ?? "nil"
                NSLog("Document data: \(dataDescription)")
            } else {
                NSLog("Document Doesn't Exist")
            }
              
            
            if document!.exists{
            let date: String = document?.get("Set Date") as! String
             let med: String = document?.get("Medication") as! String
            let amount: String = document?.get("Amount") as! String
            let url: String = document?.get("URL") as! String
            
            self.util.scheduleNotification(_fireDate: date, _med: med, _amount: amount, _url: url )
            self.alarm1.text = med + " " + date
              
            }else{
                self.alarm1.text = "Not Set"
            }
            
        }
        
        // Get Alarm 2
        let docRef2 = db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 2").document("Alarm 2 Info")
                       docRef2.getDocument { (document, error) in
                        if let document = document, document.exists {
                            let dataDescription2 = document.data().map(String.init(describing:)) ?? "nil"
                            NSLog("Document data: \(dataDescription2)")
                        } else {
                            NSLog("Document Doesn't Exist")
                        }
                          
                        
                        if document!.exists{
                        let date2: String = document?.get("Set Date") as! String
                         let med2: String = document?.get("Medication") as! String
                        let amount2: String = document?.get("Amount") as! String
                            let url2: String = document?.get("URL") as! String
                        
                            self.util.scheduleNotification(_fireDate: date2, _med: med2, _amount: amount2, _url: url2 )
                             self.alarm2.text = med2 + " " + date2
                        }else{
                         NSLog("Document Doesn't Exist")
                            self.alarm2.text = "Not Set"
                         }
                        
                    }
                    //End Alarm 2
        // Get Alarm 3
           let docRef3 = db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 3").document("Alarm 3 Info")
              docRef3.getDocument { (document, error) in
               if let document = document, document.exists {
                   let dataDescription3 = document.data().map(String.init(describing:)) ?? "nil"
                   NSLog("Document data: \(dataDescription3)")
               } else {
                   NSLog("Document Doesn't Exist")
               }
                 
               
               if document!.exists{
               let date3: String = document?.get("Set Date") as! String
                let med3: String = document?.get("Medication") as! String
               let amount3: String = document?.get("Amount") as! String
                   let url3: String = document?.get("URL") as! String
               
                   self.util.scheduleNotification(_fireDate: date3, _med: med3, _amount: amount3, _url: url3 )
                  self.alarm3.text = med3 + " " + date3
               }else{
                NSLog("Document Doesn't Exist")
                self.alarm3.text = "Not Set"
                }
               
           }
           // End Alarm 3
           // Get Alarm 4
            let docRef4 = db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 4").document("Alarm 4 Info")
               docRef4.getDocument { (document, error) in
                if let document = document, document.exists {
                    let dataDescription4 = document.data().map(String.init(describing:)) ?? "nil"
                    NSLog("Document data: \(dataDescription4)")
                } else {
                    NSLog("Document Doesn't Exist")
                }
                  
                
                if document!.exists{
                let date4: String = document?.get("Set Date") as! String
                 let med4: String = document?.get("Medication") as! String
                let amount4: String = document?.get("Amount") as! String
                    let url4: String = document?.get("URL") as! String
                
                    self.util.scheduleNotification(_fireDate: date4, _med: med4, _amount: amount4, _url: url4 )
                   self.alarm4.text = med4 + " " + date4
                }else{
                 NSLog("Document Doesn't Exist")
                    self.alarm4.text = "Not Set"
                 }
                
            }
            //End Alarm 4
            //Get Alarm 5
            let docRef5 = db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 5").document("Alarm 5 Info")
               docRef5.getDocument { (document, error) in
                if let document = document, document.exists {
                    let dataDescription5 = document.data().map(String.init(describing:)) ?? "nil"
                    NSLog("Document data: \(dataDescription5)")
                } else {
                    NSLog("Document Doesn't Exist")
                }
                  
                
                if document!.exists{
                let date5: String = document?.get("Set Date") as! String
                 let med5: String = document?.get("Medication") as! String
                let amount5: String = document?.get("Amount") as! String
                    let url5: String = document?.get("URL") as! String
                
                    self.util.scheduleNotification(_fireDate: date5, _med: med5, _amount: amount5, _url: url5 )
                   self.alarm5.text = med5 + " " + date5
                }else{
                 NSLog("Document Doesn't Exist")
                    self.alarm5.text = "Not Set"
                 }
                
            }
        
        
        
        
        
            //End Alarm 5
            //Get Alarm 6
            let docRef6 = db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 6").document("Alarm 6 Info")
               docRef6.getDocument { (document, error) in
                if let document = document, document.exists {
                    let dataDescription6 = document.data().map(String.init(describing:)) ?? "nil"
                    NSLog("Document data: \(dataDescription6)")
                } else {
                    NSLog("Document Doesn't Exist")
                }
                  
                
                if document!.exists{
                let date6: String = document?.get("Set Date") as! String
                 let med6: String = document?.get("Medication") as! String
                let amount6: String = document?.get("Amount") as! String
                    let url6: String = document?.get("URL") as! String
                
                    self.util.scheduleNotification(_fireDate: date6, _med: med6, _amount: amount6, _url: url6 )
                   self.alarm6.text = med6 + " " + date6
                }else{
                 NSLog("Document Doesn't Exist")
                    self.alarm6.text = "Not Set"
                 }
                
            }
            //End Alarm 6
            //Get Alarm 7
            let docRef7 = db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 7").document("Alarm 7 Info")
               docRef7.getDocument { (document, error) in
                if let document = document, document.exists {
                    let dataDescription7 = document.data().map(String.init(describing:)) ?? "nil"
                    NSLog("Document data: \(dataDescription7)")
                } else {
                    NSLog("Document Doesn't Exist")
                }
                  
                
                if document!.exists{
                let date7: String = document?.get("Set Date") as! String
                 let med7: String = document?.get("Medication") as! String
                let amount7: String = document?.get("Amount") as! String
                    let url7: String = document?.get("URL") as! String
                
                    self.util.scheduleNotification(_fireDate: date7, _med: med7, _amount: amount7, _url: url7 )
                   self.alarm7.text = med7 + " " + date7
                }else{
                 NSLog("Document Doesn't Exist")
                    self.alarm7.text = "Not Set"
                 }
                
            }
        
        
            //End Alarm 7
            //Get Alarm 8
        let docRef8 = db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 8").document("Alarm 8 Info")
           docRef8.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription8 = document.data().map(String.init(describing:)) ?? "nil"
                NSLog("Document data: \(dataDescription8)")
            } else {
                NSLog("Document Doesn't Exist")
            }
              
            
            if document!.exists{
            let date8: String = document?.get("Set Date") as! String
             let med8: String = document?.get("Medication") as! String
            let amount8: String = document?.get("Amount") as! String
                let url8: String = document?.get("URL") as! String
            
                self.util.scheduleNotification(_fireDate: date8, _med: med8, _amount: amount8, _url: url8 )
               self.alarm8.text = med8 + " " + date8
            }else{
             NSLog("Document Doesn't Exist")
                self.alarm8.text = "Not Set"
             }
            
        }
        
        
        
            //End Alarm 8
            //Get Alarm 9
            let docRef9 = db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 9").document("Alarm 9 Info")
               docRef9.getDocument { (document, error) in
                if let document = document, document.exists {
                    let dataDescription9 = document.data().map(String.init(describing:)) ?? "nil"
                    NSLog("Document data: \(dataDescription9)")
                } else {
                    NSLog("Document Doesn't Exist")
                }
                  
                
                if document!.exists{
                let date9: String = document?.get("Set Date") as! String
                 let med9: String = document?.get("Medication") as! String
                let amount9: String = document?.get("Amount") as! String
                    let url9: String = document?.get("URL") as! String
                
                    self.util.scheduleNotification(_fireDate: date9, _med: med9, _amount: amount9, _url: url9 )
                   self.alarm9.text = med9 + " " + date9
                }else{
                 NSLog("Document Doesn't Exist")
                    self.alarm9.text = "Not Set"
                 }
                
            }
        
        
        
            //End Alarm 9
            //Get Alarm 10
            let docRef10 = db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 10").document("Alarm 10 Info")
               docRef10.getDocument { (document, error) in
                if let document = document, document.exists {
                    let dataDescription10 = document.data().map(String.init(describing:)) ?? "nil"
                    NSLog("Document data: \(dataDescription10)")
                } else {
                    NSLog("Document Doesn't Exist")
                }
                  
                
                if document!.exists{
                let date10: String = document?.get("Set Date") as! String
                 let med10: String = document?.get("Medication") as! String
                let amount10: String = document?.get("Amount") as! String
                    let url10: String = document?.get("URL") as! String
                
                    self.util.scheduleNotification(_fireDate: date10, _med: med10, _amount: amount10, _url: url10 )
                   self.alarm10.text = med10 + " " + date10
                }else{
                 NSLog("Document Doesn't Exist")
                    self.alarm10.text = "Not Set"
                 }
                
            }
        
        
        
            //End Alarm 10
            //Get Alarm 11
        let docRef11 = db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 11").document("Alarm 11 Info")
           docRef11.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription11 = document.data().map(String.init(describing:)) ?? "nil"
                NSLog("Document data: \(dataDescription11)")
            } else {
                NSLog("Document Doesn't Exist")
            }
              
            
            if document!.exists{
            let date11: String = document?.get("Set Date") as! String
             let med11: String = document?.get("Medication") as! String
            let amount11: String = document?.get("Amount") as! String
                let url11: String = document?.get("URL") as! String
            
                self.util.scheduleNotification(_fireDate: date11, _med: med11, _amount: amount11, _url: url11 )
               self.alarm11.text = med11 + " " + date11
            }else{
             NSLog("Document Doesn't Exist")
                self.alarm11.text = "Not Set"
             }
            
        }
        
        
        
            //End Alarm 11
            //Get Alarm 12
        let docRef12 = db.collection("users").document(Auth.auth().currentUser!.uid).collection("Alarm 12").document("Alarm 12 Info")
           docRef12.getDocument { (document, error) in
            if let document = document, document.exists {
                let dataDescription12 = document.data().map(String.init(describing:)) ?? "nil"
                NSLog("Document data: \(dataDescription12)")
            } else {
                NSLog("Document Doesn't Exist")
            }
              
            
            if document!.exists{
            let date12: String = document?.get("Set Date") as! String
             let med12: String = document?.get("Medication") as! String
            let amount12: String = document?.get("Amount") as! String
                let url12: String = document?.get("URL") as! String
            
                self.util.scheduleNotification(_fireDate: date12, _med: med12, _amount: amount12, _url: url12 )
              self.alarm12.text = med12 + " " + date12
            }else{
             NSLog("Document Doesn't Exist")
                self.alarm12.text = "Not Set"
             }
            
        }
        
      
            //End Alarm 12
    
    
    
    
    
    
    
    
    }
    //end func
    

}
    



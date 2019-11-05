//
//  HomeViewController.swift
//  CapstoneFinal
//
//  Created by Faith Duval on 10/13/19.
//  Copyright © 2019 Ryan Duval. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    let log = LoginViewController()
    let vc = ViewController()
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements();
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

}

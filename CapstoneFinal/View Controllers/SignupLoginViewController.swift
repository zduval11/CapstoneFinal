//
//  SignupLoginViewController.swift
//  CapstoneFinal
//
//  Created by Faith Duval on 10/13/19.
//  Copyright © 2019 Ryan Duval. All rights reserved.
//

import UIKit

class SignupLoginViewController: UIViewController {

    
 
    @IBOutlet weak var signUpButton: UIButton!
    
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        setUpElements()
    
    }
    
    func setUpElements(){
        
        
        //style elements
        Utilities.styleFilledButton(signUpButton)
        Utilities.styleFilledButton(loginButton)


    }
    
}

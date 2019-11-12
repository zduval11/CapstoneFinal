//
//  SignupLoginViewController.swift
//  CapstoneFinal
//
//  Created by Faith Duval on 10/13/19.
//  Copyright © 2019 Ryan Duval. All rights reserved.
//

import UIKit
import Firebase

class SignupLoginViewController: UIViewController {

    override func viewDidLoad() {
         super.viewDidLoad()

         // Do any additional setup after loading the view.
         
         //Calling function to see if user is logged in
         authenticateUserAndConfigureView()
         setUpElements()
     
     }
    
    //Fucntion to see if  is still user signed in
    func authenticateUserAndConfigureView(){
        if Auth.auth().currentUser != nil{
            DispatchQueue.main.async {
                let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
                
                self.view.window?.rootViewController = homeViewController
                self.view.window?.makeKeyAndVisible()
            }
        }
    }
    
    //Fucntion to style Buttons
    func setUpElements(){
        
        
        //style elements
        Utilities.styleFilledButton(signUpButton)
        Utilities.styleFilledButton(loginButton)


    }
    
    //Declaring Outlets
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
}

//
//  LoginViewController.swift
//  CapstoneFinal
//
//  Created by Faith Duval on 10/13/19.
//  Copyright © 2019 Ryan Duval. All rights reserved.
//

import UIKit
import FirebaseAuth
class LoginViewController: UIViewController {

    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    @IBOutlet weak var backButton: UIButton!
    
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
    }
    
       
       
       func setUpElements(){
           //hide error label
           errorLabel.alpha = 0
           
           //style elements
           Utilities.styleTextField(emailTextField)
           Utilities.styleTextField(passwordTextField)
           Utilities.styleFilledButton(loginButton)



       }
       

    



    @IBAction func loginTapped(_ sender: Any) {
        
        // TODO: Validate Text Fields
         
         // Create cleaned versions of the text field
         let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
         let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
         
         // Signing in the user
         Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
             
             if error != nil {
                 // Couldn't sign in
                 self.errorLabel.text = error!.localizedDescription
                 self.errorLabel.alpha = 1
             }
             else {
                 
                 let homeViewController = self.storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
                 
                 self.view.window?.rootViewController = homeViewController
                 self.view.window?.makeKeyAndVisible()
             }
         }
    }
    

}

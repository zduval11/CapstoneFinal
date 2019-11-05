//
//  SignUpViewController.swift
//  CapstoneFinal
//
//  Created by Faith Duval on 10/13/19.
//  Copyright © 2019 Ryan Duval. All rights reserved.
//

import UIKit

import FirebaseAuth
import Firebase

class SignUpViewController: UIViewController {

    
    
    @IBOutlet weak var firstnameTextField: UITextField!
    
    
    @IBOutlet weak var lastnameTextField: UITextField!
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    @IBOutlet weak var signUpButton: UIButton!
    
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
        Utilities.styleTextField(firstnameTextField)
        Utilities.styleTextField(lastnameTextField)
        Utilities.styleTextField(emailTextField)
        Utilities.styleTextField(passwordTextField)
        Utilities.styleFilledButton(signUpButton)
        



    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    //Check the field and validate that the data is correct. If everything is correct, this method return nil. Otherwise, it retruns the error message
    
    func validateFields() -> String?{
        
        //Check that all fields are filled in
        if firstnameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            lastnameTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" ||
            passwordTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            
            return "Please fill in all fields."
        }
        
        // Check if the password is secure
        let cleanedPassword = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if Utilities.isPasswordValid(cleanedPassword) == false {
            // Password isn't secure enough
            return "Please make sure your password is at least 8 characters, contains a special character and a number."
        }
        
        return nil
    }


    @IBAction func signUpTapped(_ sender: Any) {
        //Validate field
        
        //Create the user
        
        //Transition to the home screen
    let error = validateFields()
    
    if error != nil {
        
        // There's something wrong with the fields, show error message
        showError(error!)
    }
    else {
        
        // Create cleaned versions of the data
        let firstName = firstnameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let lastName = lastnameTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        let password = passwordTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        // Create the user
        Auth.auth().createUser(withEmail: email, password: password) { (result, err) in
        
            // Check for errors
           
            
            if err != nil {
                
                // There was an error creating the user
                self.showError("Error creating user")
            }
            
            if err == nil {
                
                // User was created successfully, now store the first name and last name
                let db = Firestore.firestore()
                 
                db.collection("users").document(Auth.auth().currentUser!.uid).collection("User Info").addDocument(data: ["firstname" : firstName, "lastname" : lastName]){ (error) in
                    
                    if error != nil {
                        // Show error message
                        self.showError("Error saving user data")
                    }
                }
                
                // Transition to the home screen
                self.transitionToHome()
            }
            
        }
        
        
        
    }
    
    
}
    
    func showError(_ message:String) {
        
        errorLabel.text = message
        errorLabel.alpha = 1
    }
    
    func transitionToHome() {
        
        let homeViewController = storyboard?.instantiateViewController(identifier: Constants.Storyboard.homeViewController) as? HomeViewController
        
        view.window?.rootViewController = homeViewController
        view.window?.makeKeyAndVisible()
        
    }
    


}

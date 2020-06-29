//
//  LoginViewController.swift
//  ChatApp
//  Created by Nareshri Babu on 24/04/2020.
//  Concept by London App Brewery
//  Copyright © 2020 Nareshri Babu. All rights reserved.
//  This app was created for learning purposes.
//  All images were only used for learning purposes and do not belong to me.
//  All sounds were only used for learning purposes and do not belong to me.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
        
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
              
                if let e = error {
                    print(e)
                }
                else {
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                    
                }
                
            }
        }
        
    }
    
}

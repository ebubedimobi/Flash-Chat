//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Ebubechukwu Dimobi on 14.07.2020.
//  Copyright © 2020 blazeapps. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
   
        
      
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text{
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e)
                }else{
                    //Navigate to the chat view controller
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
            
            
        }
        
        
        
    }
    
}

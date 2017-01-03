//
//  ViewController.swift
//  Login Example
//
//  Created by Ajit Kumar Baral on 1/3/17.
//  Copyright © 2017 Ajit Kumar Baral. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var textViewEmail: UITextField!
    
    @IBOutlet weak var textViewPassword: UITextField!
    
    
    @IBOutlet weak var textViewNote: UILabel!
    
    
    
    
    @IBAction func buttonLogin(_ sender: UIButton) {
        
        self.textViewEmail.resignFirstResponder()
        self.textViewPassword.resignFirstResponder()
        
        
        if(checkFieldsAreBlank() == false){
            
            if (textViewEmail.text == "email" && textViewPassword.text == "password"){
                
                
                self.performSegue(withIdentifier: "loginToHome", sender: self)
            }else{
                    textViewNote.text = "Username or Password is incorrect"
            }
            
        }
        else{
            
            textViewNote.text = "Please enter the correct email and password"
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    private func checkFieldsAreBlank() -> Bool{
        var check : Bool = false
        if(textViewEmail.text == "" || textViewPassword.text == ""){
            check = true
        }
        
        return check
    }

}


//
//  SignUpViewController.swift
//  GukouFitness
//
//  Created by 谷口翔太 on 2021/03/29.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func signUpPressed(_ sender: UIButton) {
        
        if let email = emailTextField.text, let password = passwordTextField.text{
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error{
                    print(e)
                    self.errorTextField.text = e.localizedDescription
                } else {
                    //Navigate to HomePage
                    self.performSegue(withIdentifier: "signUpToHome", sender: self)
                }
            }
        }
    }
    
}


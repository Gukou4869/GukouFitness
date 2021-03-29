//
//  LoginViewController.swift
//  GukouFitness
//
//  Created by 谷口翔太 on 2021/03/29.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var EmailTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.yellow.cgColor, UIColor.white.cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    @IBAction func LoginPressed(_ sender: Any) {
        if let email = EmailTextField.text, let password = PasswordTextField.text{
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            }
        }
    } 

}

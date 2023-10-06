//
//  ViewController.swift
//  RegistrationApp
//
//  Created by Kirill Syrtsev on 06.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTF.placeholder = "User Name"
        passwordTF.placeholder = "Passowrd"
        
        logInButton.setTitle("Log In", for: .normal)
        logInButton.layer.cornerRadius = 7
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
    
    @IBAction func logInButtonPressed() {
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        showAlert(with: "Oops!", and: "Your name is Admin")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Oops!", and: "Your password is Admin")
    }
}

//MARK: - UIAlertController
extension ViewController {
    private func showAlert(with title: String, and messege: String) {
        let alert = UIAlertController(title: title, message: messege, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userNameTF.text = ""
            self.passwordTF.text = ""
    }
    
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
}


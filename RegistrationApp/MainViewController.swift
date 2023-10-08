//
//  ViewController.swift
//  RegistrationApp
//
//  Created by Kirill Syrtsev on 06.10.2023.
//

import UIKit

final class MainViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var logInButton: UIButton!
    
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logInButton.layer.cornerRadius = 7
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(
        withIdentifier identifier: String,
        sender: Any?
    ) -> Bool {
        guard userNameTextField.text == "Admin",
              passwordTextField.text == "Password"
        else {
            showAlert(
                with: "Oops!",
                and: "Incorrect login or password",
                textFields: [userNameTextField, passwordTextField]
            )
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? WelcomeViewController
        else { return }
        destination.userName = userNameTextField.text ?? ""
    }
    
    @IBAction func logInButtonPressed() {
        
    }
    
    @IBAction func forgotUserNameButtonPressed(_ sender: UIButton) {
        showAlert(
            with: "Oops!",
            and: "Your name is Admin",
            textFields: [userNameTextField]
        )
    }
    
    @IBAction func forgotPasswordButtonPressed(_ sender: UIButton) {
        showAlert(
            with: "Oops!",
            and: "Your password is Password",
            textFields: [passwordTextField]
        )
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
}

//MARK: - UIAlertController
extension MainViewController {
    private func showAlert(
        with title: String,
        and messege: String,
        textFields: [UITextField]
    ) {
        let alert = UIAlertController(
            title: title,
            message: messege,
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            for textField in textFields {
                textField.text = ""
            }
        }
        
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
}


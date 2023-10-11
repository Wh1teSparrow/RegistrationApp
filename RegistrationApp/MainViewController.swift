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
    
    private let user = User.getUser()
    
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
        guard userNameTextField.text == user.login,
              passwordTextField.text == user.password
        else {
            showAlert(
                with: "Oops!",
                and: "Incorrect login or password",
                textField: passwordTextField
            )
            return false
        }
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController
        else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationController = viewController as? UINavigationController {
                if let userVC = navigationController.topViewController as? UserViewController {
                    userVC.user = user
                }
            } else if let infoVC = viewController as? InfoViewController {
                infoVC.user = user
            }
        }
    }
    
    @IBAction func forgotRegistrationData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(
            with: "Oops!",
            and: "Your name is \(user.login)"
        )
        : showAlert(
            with: "Oops!",
            and: "Your name is \(user.password)"
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
        textField: UITextField? = nil
    ) {
        let alert = UIAlertController(
            title: title,
            message: messege,
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
}

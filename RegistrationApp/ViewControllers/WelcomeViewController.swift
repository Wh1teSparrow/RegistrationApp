//
//  WelcomeViewController.swift
//  RegistrationApp
//
//  Created by Kirill Syrtsev on 08.10.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addGradientLayer()
        
        welcomeLabel.text = "Welcome, \(user.login)!"
    }
}



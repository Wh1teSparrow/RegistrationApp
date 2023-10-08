//
//  WelcomeViewController.swift
//  RegistrationApp
//
//  Created by Kirill Syrtsev on 08.10.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(userName)!"
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemBlue.cgColor,
            UIColor.systemGreen.cgColor
        ]
        view.layer.insertSublayer(gradientLayer, at: .zero)
    }
    
    @IBAction func logOutButtonPressed() {
    }
}

//
//  WelcomeViewController.swift
//  RegistrationApp
//
//  Created by Kirill Syrtsev on 08.10.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemPink.cgColor,
            UIColor.systemBlue.cgColor
        ]
        
        view.layer.insertSublayer(gradientLayer, at: .zero)
        
        welcomeLabel.text = "Welcome, \(userName)!"
    }
    
    @IBAction func logOutButtonPressed() {
        
    }
}

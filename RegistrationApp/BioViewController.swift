//
//  BioViewController.swift
//  RegistrationApp
//
//  Created by Kirill Syrtsev on 11.10.2023.
//

import UIKit

final class BioViewController: UIViewController {
    
    @IBOutlet weak var userBio: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addGradientLayer()
        
        userBio.text = user.person.info.bio
    }
}

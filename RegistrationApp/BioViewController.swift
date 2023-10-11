//
//  BioViewController.swift
//  RegistrationApp
//
//  Created by Kirill Syrtsev on 11.10.2023.
//

import UIKit

final class BioViewController: UIViewController {
    
    @IBOutlet weak var userBio: UILabel!
    @IBOutlet weak var userName: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userBio.text = user.person.info.bio
        
        userName.text = "\(user.person.fullname.name) \(user.person.fullname.surname)"
    }
}

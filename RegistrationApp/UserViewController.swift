//
//  UserViewController.swift
//  RegistrationApp
//
//  Created by Kirill Syrtsev on 11.10.2023.
//

import UIKit

final class UserViewController: UIViewController {
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userPhoto: UIImageView!
    @IBOutlet var userInfoLabels: [UILabel]!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userName.text = "\(user.person.fullname.name) \(user.person.fullname.surname)"
        userPhoto.image = user.person.photo
        getUserInfo()
    }
    
    
    private func getUserInfo() {
        for userInfoLabel in userInfoLabels {
            if userInfoLabel.tag == 0 {
                userInfoLabel.text = "Name: \(user.person.fullname.name) "
            } else if userInfoLabel.tag == 1 {
                userInfoLabel.text = "Surname: \(user.person.fullname.surname) "
            } else if userInfoLabel.tag == 2 {
                userInfoLabel.text = "Place of birth: \(user.person.info.placeOfBirth)"
            } else if userInfoLabel.tag == 3 {
                userInfoLabel.text = "Post: \(user.person.info.post) "
            }
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        userPhoto.layer.cornerRadius = userPhoto.frame.width / 2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let bioVC = segue.destination as? BioViewController else { return }
        bioVC.user = user
    }
}

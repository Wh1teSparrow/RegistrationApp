//
//  InfoViewController.swift
//  RegistrationApp
//
//  Created by Kirill Syrtsev on 12.10.2023.
//

import UIKit

final class UserFriendsViewController: UIViewController {
    
    @IBOutlet var userFriends: [UILabel]!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addGradientLayer()
        
        addFriend()
    }
    
    private func addFriend() {
        for userFriend in userFriends {
            if userFriend.tag == 0 {
                userFriend.text = "1." + user.person.info.friends[0]
            } else {
                userFriend.text = "2." + user.person.info.friends[1]
            }
        }
    }
}

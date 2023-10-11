//
//  User.swift
//  RegistrationApp
//
//  Created by Kirill Syrtsev on 11.10.2023.
//

import Foundation
import UIKit

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person(
                fullname: FullName(
                    name: "Kirill",
                    surname: "Syrtsev"
                ),
                photo: UIImage(named: "Photo"),
                info: Info(
                    placeOfBirth: "Kogalym",
                    post: "Security systems engineer",
                    bio: "Born in the city of Kogalym in 2000. He loves mountains and travel. In the past, he was professionally engaged in ice climbing. He rides a skateboard and likes to listen to deathcore.",
                    friends: ["Tim Cook", "Jony Ive"]
                )))
    }
}

struct Person {
    let fullname: FullName
    let photo: UIImage!
    let info: Info
}

struct FullName {
    let name: String
    let surname: String
}

struct Info {
    let placeOfBirth: String
    let post: String
    let bio: String
    let friends: [String]
}

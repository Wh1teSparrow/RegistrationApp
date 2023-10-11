//
//  User.swift
//  RegistrationApp
//
//  Created by Kirill Syrtsev on 11.10.2023.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getuser() -> User {
        User(login: "User", password: "Password", person: Person(fullname: FullName(name: "Kirill", surname: "Syrtsev"), photo: "", info: Info(placeOfBirth: "Kogalym", job: "Optimus LCC", post: "Security systems engineer", bio: "Born in the city of Kogalym in 2000")))
    }
}

struct Person {
    let fullname: FullName
    let photo: String
    let info: Info
}

struct FullName {
    let name: String
    let surname: String
}

struct Info {
    let placeOfBirth: String
    let job: String
    let post: String
    let bio: String
}

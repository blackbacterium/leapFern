//
//  UserRepository.swift
//  leafFern
//
//  Created by Black Bacterium on 14.10.2025.
//

import Foundation


class UserRepository {
    
    func getUsers() -> [User] {
        [User(login: "grinch@mail.ru", password: 1234, personalInfo: Person(name: "Grinch", lastName: "Kind")),
        User(login: "fred@mail.ru", password: 4321,personalInfo: Person(name: "Fred", lastName: "Brown")),
        User(login: "tom@mail.ru", password: 0000,personalInfo: Person(name: "Tom", lastName: "Sawyer"))]
    }
}

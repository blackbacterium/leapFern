//
//  Helper.swift
//  leafFern
//
//  Created by Black Bacterium on 09.10.2025.
//

import Foundation


class Helper {
    private var listOfPerson: [User] = []
    
    func addPerson(_ person: User) {
        listOfPerson.append(person)
    }
    
    func getPersons() -> [User] {
        listOfPerson
    }
    
    func addMuchUsers(users: [User]) {
        for user in users {
            addPerson(user)
        }
    }
}

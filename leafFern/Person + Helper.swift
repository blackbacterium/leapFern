//
//  Person.swift
//  leafFern
//
//  Created by Black Bacterium on 07.10.2025.
//

import Foundation

class Person {
    var name: String
    var lastName: String
    
    init(name: String, lastName: String) {
        self.name = name
        self.lastName = lastName
    }
    
    var fullName: String {
        "\(name) \(lastName)"
    }
}

let Grinch: Person = Person(name: "Grinch", lastName: "Kind")
let Fred = Person(name: "Fred", lastName: "Brown")
let Tom = Person(name: "Tom", lastName: "Sawyer")

class Helper {
    private var listOfPerson: [Person] = []
    
    func addPerson(_ person: Person) {
        listOfPerson.append(person)
    }
    
    func getPersons() -> [Person] {
        listOfPerson
    }
}

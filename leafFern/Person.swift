//
//  Person.swift
//  leafFern
//
//  Created by Black Bacterium on 07.10.2025.
//

import Foundation

class Person {
    let name: String
    let lastName: String
    
    init(name: String, lastName: String) {
        self.name = name
        self.lastName = lastName
    }
    
    var fullName: String {
        "\(name) \(lastName)"
    }
}

//
//  Person.swift
//  leafFern
//
//  Created by Black Bacterium on 07.10.2025.
//

import Foundation


struct Person {
    let name: String
    let lastName: String
    
    var fullName: String {
        "\(name) \(lastName)"
    }
}

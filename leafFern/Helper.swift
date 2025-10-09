//
//  Helper.swift
//  leafFern
//
//  Created by Black Bacterium on 09.10.2025.
//

import Foundation


class Helper {
    private var listOfPerson: [Person] = []
    
    func addPerson(_ person: Person) {
        listOfPerson.append(person)
    }
    
    func getPersons() -> [Person] {
        listOfPerson
    }
}

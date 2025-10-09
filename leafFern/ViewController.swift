//
//  ViewController.swift
//  leafFern
//
//  Created by Black Bacterium on 04.10.2025.
//

import UIKit

class ViewController: UIViewController {
    private let helper = Helper()

    override func viewDidLoad() {
        super.viewDidLoad()
        updatePersons()
    }
    
    private func updatePersons() {
        
        helper.addPerson(Person(name: "Grinch", lastName: "Kind"))
        helper.addPerson(Person(name: "Fred", lastName: "Brown"))
        helper.addPerson(Person(name: "Tom", lastName: "Sawyer"))
        
        for person in helper.getPersons() {
            print(person.fullName)
        }
    }
}


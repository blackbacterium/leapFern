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

        helper.addPerson(User(login: "grinch@mail.ru", password: 1234,
                              personalInfo: Person(name: "Grinch", lastName: "Kind")))
        helper.addPerson(User(login: "fred@mail.ru", password: 4321,
                              personalInfo: Person(name: "Fred", lastName: "Brown")))
        helper.addPerson(User(login: "tom@mail.ru", password: 0000,
                              personalInfo: Person(name: "Tom", lastName: "Sawyer")))
        
        for person in helper.getPersons() {
            print(person.personalInfo.fullName)
        }
    }
}

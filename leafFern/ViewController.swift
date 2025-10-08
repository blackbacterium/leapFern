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
        helper.addPerson(Grinch)
        helper.addPerson(Fred)
        helper.addPerson(Tom)
        
        for person in helper.getPersons() {
            print(person.fullName)
        }
    }
}


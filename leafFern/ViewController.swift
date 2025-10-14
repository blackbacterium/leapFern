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
        view.backgroundColor = .blue
        view.alpha = 0.9
        updatePersons()
    }
    
    private func updatePersons() {
        let userRepository = UserRepository()
        helper.addMuchUsers(users: userRepository.getUsers())
        
        for person in helper.getPersons() {
            print(person.personalInfo.fullName)
        }
    }
}

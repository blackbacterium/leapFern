//
//  ViewController.swift
//  leafFern
//
//  Created by Black Bacterium on 04.10.2025.
//

import UIKit

class ViewController: UIViewController {
    
    private let helper = Helper()
    private let userRepository = UserRepository()
    private let textLabel = UILabel()
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Show FullName", for: .normal)
        button.backgroundColor = .green
        button.frame = CGRect(x: 100, y: 150, width: 150, height: 50)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
//        view.alpha = 1.0
        updatePersons()
        
        setupLabel()
        view.addSubview(textLabel)
        view.addSubview(button)
    }
    
    private func updatePersons() {
        helper.addMuchUsers(users: userRepository.getUsers())
        
        for person in helper.getPersons() {
            print(person.personalInfo.fullName)
        }
    }
    
    private func setupLabel() {
        textLabel.text = 
        "\(userRepository.getUsers().randomElement()?.personalInfo.fullName ?? "")"
        textLabel.font = .systemFont(ofSize: 25, weight: .regular)
        textLabel.textColor = .blue
        textLabel.frame = CGRect(x: 100, y: 100, width: 100, height: 50) // fullName не видно
//        textLabel.frame = CGRect(x: 100, y: 100, width: 200, height: 50) // fullName видно
    }
}

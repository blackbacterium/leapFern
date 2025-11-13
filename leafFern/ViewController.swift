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
    private let buttonView = ButtonView(buttonName: "Show New User", colorButton: .red, setShadow: false)
    private let secondButtonView = ButtonView(buttonName: "Hide User", colorButton: .green, setShadow: true)
    private let stackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        updatePersons()
        
        setupLabel()
        setupStackView()
        view.addSubview(stackView)
        setupLayout()
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
        textLabel.textAlignment = .center
        textLabel.textColor = .blue
    }
    
    private func setupStackView() {
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 12
        
        stackView.addArrangedSubview(textLabel)
        stackView.addArrangedSubview(buttonView)
        stackView.addArrangedSubview(secondButtonView)
    }
    
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4),
            stackView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.4)
        ])
    }
}

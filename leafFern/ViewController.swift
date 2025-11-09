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
    private let lableContainer = UIView()
    private let button = UIButton()
    private let stackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        updatePersons()
        
        setupLabel()
        setupButton()
        setupStackView()
        view.addSubview(stackView)
//        view.addSubview(textLabel) - добавил в StackView через lableContainer
//        view.addSubview(button) - добавил в StackView
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
        
        lableContainer.addSubview(textLabel)
    }
    
    private func setupButton() {
        button.setTitle("Show FullName", for: .normal)
        button.backgroundColor = .green
    }
    
    private func setupStackView() {
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        
        stackView.addArrangedSubview(lableContainer)
        stackView.addArrangedSubview(button)
    }
    
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.widthAnchor.constraint(equalToConstant: 150),
            stackView.heightAnchor.constraint(equalToConstant: 300),
            
            textLabel.centerXAnchor.constraint(equalTo: lableContainer.centerXAnchor),
            textLabel.centerYAnchor.constraint(equalTo: lableContainer.centerYAnchor),
            textLabel.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
}

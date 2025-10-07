//
//  ViewController.swift
//  leafFern
//
//  Created by Black Bacterium on 04.10.2025.
//

import UIKit

class ViewController: UIViewController {
    let person = Person()

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Меня зовут \(person.myName), я создал cвое первое приложение")
        print(person.fullName)
    }
}


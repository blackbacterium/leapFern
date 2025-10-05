//
//  ViewController.swift
//  leafFern
//
//  Created by Black Bacterium on 04.10.2025.
//

import UIKit

class ViewController: UIViewController {
    let myName = "Roman"
    let lastName = "Pimkin"
    
    var fullName: String {
        "\(myName) \(lastName)"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Меня зовут \(myName), я создал cвое первое приложение")
        print(fullName)
    }
}


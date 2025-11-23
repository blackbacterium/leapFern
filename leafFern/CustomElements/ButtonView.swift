//
//  ButtonView.swift
//  leafFern
//
//  Created by Black Bacterium on 13.11.2025.
//

import UIKit

class ButtonView: UIButton {
    
    init(buttonName: String, colorButton: UIColor, setShadow: Bool) {
        super.init(frame: .zero)
        setupButton(buttonName, and: colorButton)
        if setShadow {
            setupShadow()
        }
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let shadowPath = UIBezierPath(rect: bounds)
        layer.shadowPath = shadowPath.cgPath
    }
}

//MARK: - Setup View
private extension UIButton {
    func setupButton(_ buttonName: String, and colorButton: UIColor) {
        setTitle(buttonName, for: .normal)
        backgroundColor = colorButton
        layer.cornerRadius = 20
    }
    
    func setupShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize(width: 8, height: 8)
        layer.shadowRadius = 10
    }
}

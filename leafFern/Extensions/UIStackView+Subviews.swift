//
//  UIStackView+Subview.swift
//  leafFern
//
//  Created by Black Bacterium on 23.11.2025.
//

import UIKit

extension UIStackView {
    func addMoreArrangedSubviews(_ Subviews: [UIView]) {
        for Subview in Subviews {
            addArrangedSubview(Subview)
        }
    }
}

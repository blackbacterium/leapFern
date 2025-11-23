//
//  UIView+Subviews.swift
//  leafFern
//
//  Created by Black Bacterium on 23.11.2025.
//

import UIKit

extension UIView {
    func addMoreSubviews(_ Subviews: [UIView]) {
        for Subview in Subviews {
            addSubview(Subview)
        }
    }
}

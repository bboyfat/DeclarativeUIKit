//
//  File.swift
//  
//
//  Created by Andrey Petrovskiy on 02.12.2021.
//

import UIKit

public extension UIButton {
    func withAction(_ action: Selector) -> Self {
        addTarget(self, action: action, for: .touchUpInside)
        return self
    }

    func withTitle(_ title: String) -> Self {
        setTitle(title, for: .normal)
        return self
    }

    func withTitleColor(_ color: UIColor) -> Self {
        setTitleColor(color, for: .normal)
        return self
    }

    func withTitleFont(_ font: UIFont) -> Self {
        titleLabel?.font = font
        return self
    }
}

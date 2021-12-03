//
//  UIActivityIndicatorView+Extension.swift
//  
//
//  Created by Andrey Petrovskiy on 03.12.2021.
//

import UIKit

public extension UIActivityIndicatorView {
    func withStyle(_ style: UIActivityIndicatorView.Style = .medium) -> Self {
        self.style = style
        return self
    }

    func withColor(_ color: UIColor) -> Self {
        self.color = color
        return self
    }
}

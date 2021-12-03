//
//  UILabel+Extension.swift
//  
//
//  Created by Andrey Petrovskiy on 02.12.2021.
//

import UIKit


public extension UILabel {
    func withTextColor(_ color: UIColor) -> Self {
        textColor = color
        return self
    }

    func withFont(_ font: UIFont = .systemFont(ofSize: 15)) -> Self {
        self.font = font
        return self
    }

    func withScaleFactor(_ minimumScale: CGFloat = 0.5) -> Self {
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = minimumScale
        return self
    }

    func withTextAlighment(_ alignment: NSTextAlignment = .left) -> Self {
        textAlignment = alignment
        return self
    }

    func withText(_ text: String) -> Self {
        self.text = text
        return self
    }

}

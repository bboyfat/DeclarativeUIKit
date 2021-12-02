//
//  UILabel+Extension.swift
//  
//
//  Created by Andrey Petrovskiy on 02.12.2021.
//

import UIKit


extension UILabel {
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

}

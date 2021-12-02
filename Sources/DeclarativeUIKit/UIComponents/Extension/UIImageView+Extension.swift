//
//  UIImageView+Extension.swift
//  
//
//  Created by Andrey Petrovskiy on 02.12.2021.
//

import UIKit

public extension UIImageView {
    func withContentMode(mode: UIView.ContentMode) -> Self {
        self.contentMode = contentMode
        return self
    }
}

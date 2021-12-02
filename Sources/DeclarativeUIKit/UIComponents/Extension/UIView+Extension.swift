//
//  File.swift
//  
//
//  Created by Andrey Petrovskiy on 02.12.2021.
//

import UIKit

public extension UIView {
    class func create<T:UIView>(_ view: (T) -> T) -> T {
        return view(T())
    }

    func removeAutoresizing() -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        return self
    }

    func applyRoundCorners(_ cornerRadius: CGFloat = 12) -> Self {
        self.layer.cornerRadius = cornerRadius
        return self
    }

    func withBackgorundColor(_ color: UIColor) -> Self {
        self.backgroundColor = color
        return self
    }

}

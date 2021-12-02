//
//  UIView+Extension.swift
//  
//
//  Created by Andrey Petrovskiy on 02.12.2021.
//

import UIKit

extension UIView {
    /// Method which gives us opportunity to set our view on creating
    ///  Do not use on UICollectionVIew Instance because its reqired tto get layout on init, and you will got the crash
    /// - Returns: UI elment which you can setup declaratively
    public static func create<T:UIView>(_ view: (T) -> T) -> T {
        return view(T())
    }
}

public extension UIView {
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

//
//  UIVisualEffectView+Extension.swift
//  
//
//  Created by Andrey Petrovskiy on 03.12.2021.
//

import UIKit

public extension UIVisualEffectView {
    static func createBlurEffectView<T:UIVisualEffectView>(with style: UIBlurEffect.Style, _ view: (T) -> T) -> T {
        let effect = UIBlurEffect(style: style)
        return view(T.init(effect: effect))
    }
}

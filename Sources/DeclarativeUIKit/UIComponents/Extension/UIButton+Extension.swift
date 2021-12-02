//
//  UIButton+Extension.swift
//  
//
//  Created by Andrey Petrovskiy on 02.12.2021.
//

import UIKit
public typealias ButtonAction = () -> Void
public extension UIButton {

    func withAction(controlIvent: UIControl.Event = .touchUpInside,
                    _ action: @escaping ButtonAction) {
        @objc class ClosureSleeve: NSObject {
            let closure: ButtonAction
            init(_ closure: @escaping ButtonAction) { self.closure = closure }
            @objc func invoke() { closure() }
        }
        let sleeve = ClosureSleeve(action)
        addTarget(sleeve,
                  action: #selector(ClosureSleeve.invoke),
                  for: .touchUpInside)
        objc_setAssociatedObject(self, "\(UUID())", sleeve, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
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

//
//  File.swift
//  
//
//  Created by Andrey Petrovskiy on 02.12.2021.
//

import UIKit

extension UIView {

    @objc open func clipToSuperview() {
        guard let superView = superview else {
            return
        }

        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superView.topAnchor),
            bottomAnchor.constraint(equalTo: superView.bottomAnchor),
            leftAnchor.constraint(equalTo: superView.leftAnchor),
            rightAnchor.constraint(equalTo: superView.rightAnchor)
        ])
    }

    public func layoutSubview(_ subview: UIView,
                       layout: (_ subview: UIView) -> ([NSLayoutConstraint])) {
        addSubview(subview)
        let constraints = layout(subview)
        NSLayoutConstraint.activate(constraints)
    }

}


// MARK: - ANCHORS

public extension UIView {

    // MARK: - Left Anchor
    func leftAnchor(relativeTo: NSLayoutXAxisAnchor,
                    _ constant: CGFloat = 0) -> NSLayoutConstraint {
        return leftAnchor.constraint(equalTo: relativeTo,
                                     constant: constant)
    }

    func leftAnchor(greaterThenOrEqualTo: NSLayoutXAxisAnchor,
                    _ constant: CGFloat = 0) -> NSLayoutConstraint {
        return leftAnchor.constraint(greaterThanOrEqualTo: greaterThenOrEqualTo,
                                     constant: constant)
    }

    func leftAnchor(lessThenOrEqualTo: NSLayoutXAxisAnchor,
                    _ constant: CGFloat = 0) -> NSLayoutConstraint {
        return leftAnchor.constraint(lessThanOrEqualTo: lessThenOrEqualTo,
                                     constant: constant)
    }


    // MARK: - Right Anchor
    func rightAnchor(relativeTo: NSLayoutXAxisAnchor,
                     _ constant: CGFloat = 0) -> NSLayoutConstraint {
        return rightAnchor.constraint(equalTo: relativeTo,
                                      constant: constant)
    }

    func rightAnchor(greaterThenOrEqualTo: NSLayoutXAxisAnchor,
                     _ constant: CGFloat = 0) -> NSLayoutConstraint {
        return rightAnchor.constraint(greaterThanOrEqualTo: greaterThenOrEqualTo,
                                      constant: constant)
    }

    func rightAnchor(lessThenOrEqualTo: NSLayoutXAxisAnchor,
                     _ constant: CGFloat = 0) -> NSLayoutConstraint {
        return rightAnchor.constraint(lessThanOrEqualTo: lessThenOrEqualTo,
                                      constant: constant)
    }

    // MARK: - Top Anchor
    func topAnchor(relativeTo: NSLayoutYAxisAnchor,
                   _ constant: CGFloat = 0) -> NSLayoutConstraint {
        return topAnchor.constraint(equalTo: relativeTo,
                                    constant: constant)
    }

    func topAnchor(greaterThenOrEqualTo: NSLayoutYAxisAnchor,
                   _ constant: CGFloat = 0) -> NSLayoutConstraint {
        return topAnchor.constraint(greaterThanOrEqualTo: greaterThenOrEqualTo,
                                    constant: constant)
    }

    func topAnchor(lessThenOrEqualTo: NSLayoutYAxisAnchor,
                   _ constant: CGFloat = 0) -> NSLayoutConstraint {
        return topAnchor.constraint(lessThanOrEqualTo: lessThenOrEqualTo,
                                    constant: constant)
    }

    // MARK: - Bottom Anchor
    func bottomAnchor(relativeTo: NSLayoutYAxisAnchor,
                      _ constant: CGFloat = 0) -> NSLayoutConstraint {
        return bottomAnchor.constraint(equalTo: relativeTo,
                                       constant: constant)
    }

    func bottomAnchor(greaterThenOrEqualTo: NSLayoutYAxisAnchor,
                      _ constant: CGFloat = 0) -> NSLayoutConstraint {
        return bottomAnchor.constraint(greaterThanOrEqualTo: greaterThenOrEqualTo,
                                       constant: constant)
    }

    func bottomAnchor(lessThenOrEqualTo: NSLayoutYAxisAnchor,
                      _ constant: CGFloat = 0) -> NSLayoutConstraint {
        return bottomAnchor.constraint(lessThanOrEqualTo: lessThenOrEqualTo,
                                       constant: constant)
    }

    // MARK: - Horizontal Center
    func centerHorizontaly(_ relativeTo: NSLayoutXAxisAnchor,
                           _ constant: CGFloat = 0) -> NSLayoutConstraint {
        return centerXAnchor.constraint(equalTo: relativeTo,
                                        constant: constant)
    }

    func centerHorizontaly(greaterThenOrEqualTo: NSLayoutXAxisAnchor,
                           _ constant: CGFloat = 0) -> NSLayoutConstraint {
        return centerXAnchor.constraint(greaterThanOrEqualTo: greaterThenOrEqualTo,
                                        constant: constant)
    }

    func centerHorizontaly(lessThenOrEqualTo: NSLayoutXAxisAnchor,
                           _ constant: CGFloat = 0) -> NSLayoutConstraint {
        return centerXAnchor.constraint(lessThanOrEqualTo: lessThenOrEqualTo,
                                        constant: constant)
    }

    // MARK: - Vertical Center
    func centerVerticaly(relativeTo: NSLayoutYAxisAnchor,
                         _ constant: CGFloat = 0) -> NSLayoutConstraint {
        return centerYAnchor.constraint(equalTo: relativeTo,
                                        constant: constant)
    }

    func centerVerticaly(greaterThenOrEqualTo: NSLayoutYAxisAnchor,
                         _ constant: CGFloat = 0) -> NSLayoutConstraint {
        return centerYAnchor.constraint(greaterThanOrEqualTo: greaterThenOrEqualTo,
                                        constant: constant)
    }

    func centerVerticaly(lessThenOrEqualTo: NSLayoutYAxisAnchor,
                         _ constant: CGFloat = 0) -> NSLayoutConstraint {
        return centerYAnchor.constraint(lessThanOrEqualTo: lessThenOrEqualTo,
                                        constant: constant)
    }

    // MARK: - WIDTH
    func width(greaterThenOrEqualTo: CGFloat = 0) -> NSLayoutConstraint {
        return widthAnchor.constraint(greaterThanOrEqualToConstant: greaterThenOrEqualTo)
    }

    func width(lessThenOrEqualTo: CGFloat = 0) -> NSLayoutConstraint {
        return widthAnchor.constraint(lessThanOrEqualToConstant: lessThenOrEqualTo)
    }

    func width(equalTo: CGFloat = 0) -> NSLayoutConstraint {
        return widthAnchor.constraint(equalToConstant: equalTo)
    }

    // MARK: - HEIGHT
    func height(greaterThenOrEqualTo: CGFloat = 0) -> NSLayoutConstraint {
        return heightAnchor.constraint(greaterThanOrEqualToConstant: greaterThenOrEqualTo)
    }

    func height(lessThenOrEqualTo: CGFloat = 0) -> NSLayoutConstraint {
        return heightAnchor.constraint(lessThanOrEqualToConstant: lessThenOrEqualTo)
    }

    func height(equalTo: CGFloat = 0) -> NSLayoutConstraint {
        return heightAnchor.constraint(equalToConstant: equalTo)
    }



}

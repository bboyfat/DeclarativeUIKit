//
//  Reusable.swift
//  
//
//  Created by Andrey Petrovskiy on 02.12.2021.
//

import UIKit

public protocol Reusable {

    static var reuseIdentifier: String { get }
}

public extension Reusable {

    static var reuseIdentifier: String {
        return String(describing: self.self)
    }
}

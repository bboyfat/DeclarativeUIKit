//
//  UITableView+Extension.swift
//  
//
//  Created by Andrey Petrovskiy on 02.12.2021.
//

import UIKit


public extension UITableView {
    func withDelegate(_ delegate: UITableViewDelegate?) -> UITableView {
        self.delegate = delegate
        return self
    }

    func withDataSource(_ dataSource: UITableViewDataSource?) -> UITableView {
        self.dataSource = dataSource
        return self
    }

    func withCell<T: UITableViewCell>(_ cellClass: T.Type) -> UITableView {
        self.register(cellClass, forCellReuseIdentifier: T.reuseIdentifier)
        return self
    }

    func withHeader<T: UITableViewHeaderFooterView>(_ headerClass: T.Type) -> UITableView {
        self.register(headerClass,
                      forHeaderFooterViewReuseIdentifier: T.reuseIdentifier)
        return self
    }

    func withFooter<T: UITableViewHeaderFooterView>(_ footerClass: T.Type) -> UITableView {
        self.register(footerClass,
                      forHeaderFooterViewReuseIdentifier: T.reuseIdentifier)
        return self
    }
}

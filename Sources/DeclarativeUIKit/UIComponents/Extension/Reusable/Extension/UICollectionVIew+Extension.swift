//
//  UICollectionVIew+Extension.swift
//  
//
//  Created by Andrey Petrovskiy on 02.12.2021.
//

import UIKit

public typealias Collection = UICollectionView

extension UICollectionView {
    public static func createCollection(_ view: (Collection) -> Collection) -> Collection {
        return view(Collection(frame: .zero,
                               collectionViewLayout: .init()))
    }
}


extension UICollectionView {

    func withDelegate(_ delegate: UICollectionViewDelegate?) -> Collection {
        self.delegate = delegate
        return self
    }

    func withDataSource(_ dataSource: UICollectionViewDataSource?) -> Collection {
        self.dataSource = dataSource
        return self
    }

    func withCustomLayout(_ layout: UICollectionViewLayout) -> Collection {
        self.collectionViewLayout = layout
        return self
    }

    func withCell<T: UICollectionViewCell>(_ cellClass: T.Type) -> Collection {
        self.register(cellClass,
                      forCellWithReuseIdentifier: T.reuseIdentifier)
        return self
    }

    func withHeader<T: UICollectionReusableView>(_ reusableViewClass: T.Type) -> Collection {
        self.register(reusableViewClass,
                      forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader,
                      withReuseIdentifier: T.reuseIdentifier)
        return self
    }

    func withFooter<T: UICollectionReusableView>(_ reusableViewClass: T.Type) -> Collection {
        self.register(reusableViewClass,
                      forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter,
                      withReuseIdentifier: T.reuseIdentifier)
        return self
    }
}

//
//  RandomViewModels.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 05.01.2023.
//

import UIKit


class RViewModels: Colors {
    
    lazy var collectionView: UICollectionView = {
        let l = UICollectionViewFlowLayout()
        l.scrollDirection = .vertical
        l.minimumLineSpacing = GConstants.mediumPadding
        l.sectionInset = UIEdgeInsets(
            top: GConstants.mediumPadding,
            left: GConstants.mediumPadding,
            bottom: GConstants.mediumPadding,
            right: GConstants.mediumPadding
        )
        
        let c = UICollectionView(frame: .zero, collectionViewLayout: l)
        c.backgroundColor = clearBlack
        c.register(CardCell.self, forCellWithReuseIdentifier: CardCell.identifier)
        c.register(RHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: RHeaderView.identifier)
        
        let refreshControl = UIRefreshControl()
        c.addSubview(refreshControl)
        
        c.translatesAutoresizingMaskIntoConstraints = false
        return c
    }()
    
    private lazy var backgroundImage: UIImageView = {
        let v = UIImageView()
        v.image = GConstants.backgroundImage
        
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    func setupViews(parent: UIView) {
        parent.addSubview(backgroundImage)
        parent.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: parent.topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: parent.leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: parent.trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: parent.bottomAnchor),
            
            collectionView.topAnchor.constraint(equalTo: parent.topAnchor),
            collectionView.leadingAnchor.constraint(equalTo: parent.safeAreaLayoutGuide.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: parent.safeAreaLayoutGuide.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: parent.bottomAnchor),
        ])
    }
}

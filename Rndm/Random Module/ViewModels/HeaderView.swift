//
//  HeaderView.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 06.01.2023.
//

import UIKit


class RHeaderView: UICollectionReusableView, Colors, Fonts {
    static let identifier = "RHeaderViewIdentifier"
    
    lazy var sectionHeaderlabel: UILabel = {
        let l = UILabel()
        l.textColor = sectionHeaderPetitTitle
        l.font = petitHeaderFont
        
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    override init(frame: CGRect) { super.init(frame: frame)
        backgroundColor = .clear
        
        addSubview(sectionHeaderlabel)
        
        NSLayoutConstraint.activate([
            sectionHeaderlabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: GConstants.mediumPadding),
            sectionHeaderlabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -GConstants.smallPadding),
        ])
    }
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
}

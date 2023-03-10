//
//  GlobalConstants.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 05.01.2023.
//

import UIKit


enum GConstants {
    
    static let backgroundImage: UIImage = UIImage(named: "BG_dark_clear")!
    
    static let rTitle: String = "Random"
    static let rImage: UIImage = UIImage(named: "r")!
    static let rSelectedImage: UIImage = UIImage(named: "rSelected")!
    
    static let nTitle: String = "Number"
    static let nImage: UIImage = UIImage(named: "n")!
    static let nSelectedImage: UIImage = UIImage(named: "nSelected")!
    
    static let dTitle: String = "Device"
    static let dImage: UIImage = UIImage(named: "d")!
    static let dSelectedImage: UIImage = UIImage(named: "dSelected")!
    
    static let mTitle: String = "My Favoritess"
    static let mImage: UIImage = UIImage(named: "m")!
    static let mSelectedImage: UIImage = UIImage(named: "mSelected")!
    
    static let smallPadding: CGFloat = 8.0
    static let mediumPadding: CGFloat = 16.0
    static let largePadding: CGFloat = 32.0
    
    static let smallCardWidth: CGFloat = UIScreen.main.bounds.width / 2 - 2 * GConstants.mediumPadding //- GConstants.smallPadding
    static let largeCardWidth: CGFloat = UIScreen.main.bounds.width - 2 * GConstants.mediumPadding
    
    static let largeCardHeight: CGFloat = 240.0
    static let smallCardHeight: CGFloat = 240.0
    
    static let petitCornerRadius: CGFloat = 12.0
    static let mediumCornerRadius: CGFloat = 20.0
}

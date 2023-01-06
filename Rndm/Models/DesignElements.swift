//
//  DesignElements.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 05.01.2023.
//

import UIKit

protocol Colors {
    var accent: UIColor {get}
    var secondary: UIColor {get}
    var dominant: UIColor {get}
    
    var clearBlack: UIColor {get}
    var semiClearBlack: UIColor {get}
    var semiBlack: UIColor {get}
    var black: UIColor {get}
    
    var clearWhite: UIColor {get}
    var semiClearWhite: UIColor {get}
    var semiWhite: UIColor {get}
    var white: UIColor {get}
    
    var sectionHeaderPetitTitle: UIColor {get}
}

extension Colors {
    var accent: UIColor {UIColor(red: 25.0/255.0, green: 250.0/255.0, blue: 119.0/255.0, alpha: 1)}
    var secondary: UIColor {UIColor(red: 200.0/255.0, green: 125.0/255.0, blue: 250.0/255.0, alpha: 1)}
    var dominant: UIColor {UIColor(red: 15.0/255.0, green: 20.0/255.0, blue: 27.0/255.0, alpha: 1)}
    
    var clearBlack: UIColor {UIColor(red: 0, green: 0, blue: 0, alpha: 0)}
    var semiClearBlack: UIColor {UIColor(red: 0, green: 0, blue: 0, alpha: 0.25)}
    var semiBlack: UIColor {UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)}
    var black: UIColor {UIColor(red: 0, green: 0, blue: 0, alpha: 1)}
    
    var clearWhite: UIColor {UIColor(red: 1, green: 1, blue: 1, alpha: 0)}
    var semiClearWhite: UIColor {UIColor(red: 1, green: 1, blue: 1, alpha: 0.25)}
    var semiWhite: UIColor {UIColor(red: 1, green: 1, blue: 1, alpha: 0.5)}
    var white: UIColor {UIColor(red: 1, green: 1, blue: 1, alpha: 1)}
    
    var sectionHeaderPetitTitle: UIColor {UIColor(red: 1, green: 1, blue: 1, alpha: 0.6)}
}

protocol Glassmorphism {
    var overlayBlendMode: String {get}
    
    var petitOpacity: Float {get}
    var semiOpacity: Float {get}
    var semiFullOpacity: Float {get}
    var fullOpacity: Float {get}
    
    var borderWidth: CGFloat {get}
    var cornerRadius: CGFloat {get}
}

extension Glassmorphism {
    var overlayBlendMode: String { "overlayBlendMode" }
    
    var petitOpacity: Float {0.1}
    var semiOpacity: Float {0.5}
    var semiFullOpacity: Float { 0.8 }
    var fullOpacity: Float { 1.0 }
    
    var borderWidth: CGFloat {2.0}
    var cornerRadius: CGFloat {20}
}

protocol Fonts {
    var petitHeaderFont: UIFont? {get}
}

extension Fonts {
    var petitHeaderFont: UIFont? {UIFont(name: "Poppins-Bold", size: 11)}
}

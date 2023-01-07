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
    
    var cardTitleOacity: Float {get}
    
    var borderWidth: CGFloat {get}
    var cornerRadius: CGFloat {get}
    
    var cardTextShadowOffset: CGSize {get}
    var cardTextShadowRadius: CGFloat {get}
}

extension Glassmorphism {
    var overlayBlendMode: String { "overlayBlendMode" }
    
    var petitOpacity: Float {0.1}
    var semiOpacity: Float {0.5}
    var semiFullOpacity: Float { 0.8 }
    var fullOpacity: Float { 1.0 }
    var cardTitleOacity: Float {0.6}
    
    var borderWidth: CGFloat {2.0}
    var cornerRadius: CGFloat {20}
    
    var cardTextShadowOffset: CGSize {CGSize(width: 3, height: 3)}
    var cardTextShadowRadius: CGFloat {3.0}
}

protocol Fonts {
    var petitHeaderFont: UIFont? {get}
    var largeTitleFont: UIFont? {get}
    var cardTextFont: UIFont? {get}
    var cardMediumTextFont: UIFont? {get}
    var cardLargeTextFont: UIFont? {get}
    var cardTitleFont: UIFont? {get}
    var cardDescriptionFont: UIFont? {get}
}

extension Fonts {
    var petitHeaderFont: UIFont? {UIFont(name: "Poppins-Bold", size: 11)}
    var largeTitleFont: UIFont? {UIFont(name: "Poppins-Bold", size: 24)}
    var cardTextFont: UIFont? {UIFont(name: "Poppins-Medium", size: 15)}
    var cardMediumTextFont: UIFont? {UIFont(name: "Poppins-Medium", size: 32)}
    var cardLargeTextFont: UIFont? {UIFont(name: "Poppins-Medium", size: 64)}
    var cardTitleFont: UIFont? {UIFont(name: "Poppins-Bold", size: 15)}
    var cardDescriptionFont: UIFont? {UIFont(name: "Poppins-Medium", size: 9)}
}

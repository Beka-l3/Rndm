//
//  CardModels.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 06.03.2023.
//

import UIKit

enum CardSize {
    static let smallPetit = CGSize(
        width: GConstants.smallCardWidth,
        height: GConstants.smallCardWidth * 1.2
    )
    
    static let smallMedium = CGSize(
        width: GConstants.smallCardWidth,
        height: GConstants.smallCardWidth * 1.2 * 1.2
    )
    
    static let largePetit = CGSize(
        width: GConstants.largeCardWidth,
        height: GConstants.smallCardWidth * 1.2
    )
    
    static let largeSmall = CGSize(
        width: GConstants.largeCardWidth,
        height: GConstants.largeCardWidth / 2
    )
    
    static let largeMedium = CGSize(
        width: GConstants.largeCardWidth,
        height: GConstants.smallCardWidth * 1.2 * 1.2
    )
    
    static let largeBig = CGSize(
        width: GConstants.largeCardWidth,
        height: GConstants.smallCardWidth * 1.6
    )
    
    static let largeExtra = CGSize(
        width: GConstants.largeCardWidth,
        height: GConstants.largeCardWidth
    )
}

struct Card {
    let size: CGSize
}


/*
 
 163
 
 200 ~ 163 * 1.2        smallPetit
 240 ~ 163 * 1.2 * 1.2  smallMedium
 
 ------
 
 358
 
 160 ~ 163               largePetit
 180 ~ 358 / 2           largeSmall
 240 ~ 163 * 1.2 * 1.2   largeMedium
 260 ~ 163 * 1.6         largeBig
 350 ~ 358               largeExtra
 
 */

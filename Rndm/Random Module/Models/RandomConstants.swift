//
//  RandomConstants.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 05.01.2023.
//

import Foundation
import UIKit


enum RConstanst {
    static let numberOfSections = 2
    static let numberOfItems = [1, 8]
    static let sectionTitles = ["NASA apod", "Facts and pictures"]
}

enum RGradients {
    static let gradients = [
        [
            getGradient(23, 59, 39),
        ],
        [
            getGradient(25, 250, 119),
            getGradient(13, 253, 249),
            getGradient(0, 173, 230),
            getGradient(0, 124, 254),
            getGradient(12, 60, 232),
            getGradient(79, 0, 245),
            getGradient(200, 125, 250),
            getGradient(253, 114, 216),
        ]
    ]
        
    static private func getGradient(_ r: Int, _ g: Int, _ b: Int, _ a: Int = 100) -> [UIColor] {
        return [UIColor(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: CGFloat(a)/100.0), .black]
    }
}

//
//  SVGImage.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 06.03.2023.
//

import SwiftSVG
import UIKit

struct SVGMonster {
    let urlString = "https://app.pixelencounter.com/api/basic/monsters/random"
    var image: UIView?
    
    init() {
        
    }
    
    mutating func getSVG() {
        guard let url = URL(string: self.urlString) else {
            return
        }
        
        self.image = UIView(SVGURL: url) { _ in }
        
    }
}



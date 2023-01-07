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

enum RCardTitles {
    static let sectionTitles = ["NASA apod", "Facts and pictures"]
    static let cardTitles = [
        [
            "Astronomy Pictures of the Day"
        ],
        [
            "About cats",
            "Picture if a dog",
            "Number",
            "Activity",
            "Joke",
            "User",
            "Rick & Morty",
            "SVG Monster",
        ]
    ]
    static let cardDescriptions = [
        [
            "Each day a different image or photograph of our fascinating universe is featured, along with a brief explanation written by a professional astronomer"
        ],
        [
            "For those who wants to kno more about thier lovely cats\nFrom catfact.ninja",
            "For those who loves dogs\nFrom dog.ceo",
            "Get know what secretes keep this number in math, year, date, and trivia\nFrom numbersapi.com",
            "If you are bored and do not know what to do\nHere are some suggestions\nFrom boredapi.com",
            "Flip to get the punchline\nFrom v2.jokeapi.dev",
            "If you need a fictional user\nHere is an data from randomuser.me",
            "All about this caracter\nFrom rickandmortyapi.com",
            "A generated 10x10 monster\nFrom app.pixelcounter.com"
        ]
    ]
}

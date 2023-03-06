//
//  AboutCat.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 06.03.2023.
//

import Foundation

struct AboutCat: Codable {

    var fact   : String? = nil
    var length : Int?    = nil

    enum CodingKeys: String, CodingKey {
        case fact   = "fact"
        case length = "length"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)

        fact   = try values.decodeIfPresent(String.self , forKey: .fact   )
        length = try values.decodeIfPresent(Int.self    , forKey: .length )
    }

    init() {

    }
}
 

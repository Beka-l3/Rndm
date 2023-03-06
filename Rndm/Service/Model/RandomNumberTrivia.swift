//
//  RandomNumber.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 06.03.2023.
//

import Foundation

struct RandomNumberTrivia: Codable {

  var text   : String? = nil
  var number : Int?    = nil
  var found  : Bool?   = nil
  var type   : String? = nil

  enum CodingKeys: String, CodingKey {

    case text   = "text"
    case number = "number"
    case found  = "found"
    case type   = "type"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    text   = try values.decodeIfPresent(String.self , forKey: .text   )
    number = try values.decodeIfPresent(Int.self    , forKey: .number )
    found  = try values.decodeIfPresent(Bool.self   , forKey: .found  )
    type   = try values.decodeIfPresent(String.self , forKey: .type   )
 
  }

  init() {

  }

}

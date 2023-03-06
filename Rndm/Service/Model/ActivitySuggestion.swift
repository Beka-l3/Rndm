//
//  ActivitySuggestion.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 06.03.2023.
//

import Foundation

struct ActivitySuggestion: Codable {

  var activity      : String? = nil
  var type          : String? = nil
  var participants  : Int?    = nil
  var price         : Double? = nil
  var link          : String? = nil
  var key           : String? = nil
  var accessibility : Double? = nil

  enum CodingKeys: String, CodingKey {

    case activity      = "activity"
    case type          = "type"
    case participants  = "participants"
    case price         = "price"
    case link          = "link"
    case key           = "key"
    case accessibility = "accessibility"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    activity      = try values.decodeIfPresent(String.self , forKey: .activity      )
    type          = try values.decodeIfPresent(String.self , forKey: .type          )
    participants  = try values.decodeIfPresent(Int.self    , forKey: .participants  )
    price         = try values.decodeIfPresent(Double.self , forKey: .price         )
    link          = try values.decodeIfPresent(String.self , forKey: .link          )
    key           = try values.decodeIfPresent(String.self , forKey: .key           )
    accessibility = try values.decodeIfPresent(Double.self , forKey: .accessibility )
 
  }

  init() {

  }

}

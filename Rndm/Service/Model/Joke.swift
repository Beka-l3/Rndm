//
//  Joke.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 06.03.2023.
//

import Foundation

struct Joke: Codable {

  var error    : Bool?   = nil
  var category : String? = nil
  var type     : String? = nil
  var setup    : String? = nil
  var delivery : String? = nil
  var flags    : Flags?  = Flags()
  var id       : Int?    = nil
  var safe     : Bool?   = nil
  var lang     : String? = nil

  enum CodingKeys: String, CodingKey {

    case error    = "error"
    case category = "category"
    case type     = "type"
    case setup    = "setup"
    case delivery = "delivery"
    case flags    = "flags"
    case id       = "id"
    case safe     = "safe"
    case lang     = "lang"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    error    = try values.decodeIfPresent(Bool.self   , forKey: .error    )
    category = try values.decodeIfPresent(String.self , forKey: .category )
    type     = try values.decodeIfPresent(String.self , forKey: .type     )
    setup    = try values.decodeIfPresent(String.self , forKey: .setup    )
    delivery = try values.decodeIfPresent(String.self , forKey: .delivery )
    flags    = try values.decodeIfPresent(Flags.self  , forKey: .flags    )
    id       = try values.decodeIfPresent(Int.self    , forKey: .id       )
    safe     = try values.decodeIfPresent(Bool.self   , forKey: .safe     )
    lang     = try values.decodeIfPresent(String.self , forKey: .lang     )
 
  }

  init() {

  }

}


struct Flags: Codable {

  var nsfw      : Bool? = nil
  var religious : Bool? = nil
  var political : Bool? = nil
  var racist    : Bool? = nil
  var sexist    : Bool? = nil
  var explicit  : Bool? = nil

  enum CodingKeys: String, CodingKey {

    case nsfw      = "nsfw"
    case religious = "religious"
    case political = "political"
    case racist    = "racist"
    case sexist    = "sexist"
    case explicit  = "explicit"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    nsfw      = try values.decodeIfPresent(Bool.self , forKey: .nsfw      )
    religious = try values.decodeIfPresent(Bool.self , forKey: .religious )
    political = try values.decodeIfPresent(Bool.self , forKey: .political )
    racist    = try values.decodeIfPresent(Bool.self , forKey: .racist    )
    sexist    = try values.decodeIfPresent(Bool.self , forKey: .sexist    )
    explicit  = try values.decodeIfPresent(Bool.self , forKey: .explicit  )
 
  }

  init() {

  }

}

//
//  RandomUser.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 06.03.2023.
//

import Foundation

struct RandomUser: Codable {

  var results : [Results]? = []
  var info    : Info?      = Info()

  enum CodingKeys: String, CodingKey {

    case results = "results"
    case info    = "info"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    results = try values.decodeIfPresent([Results].self , forKey: .results )
    info    = try values.decodeIfPresent(Info.self      , forKey: .info    )
 
  }

  init() {

  }

}


struct Name: Codable {

  var title : String? = nil
  var first : String? = nil
  var last  : String? = nil

  enum CodingKeys: String, CodingKey {

    case title = "title"
    case first = "first"
    case last  = "last"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    title = try values.decodeIfPresent(String.self , forKey: .title )
    first = try values.decodeIfPresent(String.self , forKey: .first )
    last  = try values.decodeIfPresent(String.self , forKey: .last  )
 
  }

  init() {

  }

}


struct Street: Codable {

  var number : Int?    = nil
  var name   : String? = nil

  enum CodingKeys: String, CodingKey {

    case number = "number"
    case name   = "name"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    number = try values.decodeIfPresent(Int.self    , forKey: .number )
    name   = try values.decodeIfPresent(String.self , forKey: .name   )
 
  }

  init() {

  }

}


struct Coordinates: Codable {

  var latitude  : String? = nil
  var longitude : String? = nil

  enum CodingKeys: String, CodingKey {

    case latitude  = "latitude"
    case longitude = "longitude"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    latitude  = try values.decodeIfPresent(String.self , forKey: .latitude  )
    longitude = try values.decodeIfPresent(String.self , forKey: .longitude )
 
  }

  init() {

  }

}


struct Timezone: Codable {

  var offset      : String? = nil
  var description : String? = nil

  enum CodingKeys: String, CodingKey {

    case offset      = "offset"
    case description = "description"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    offset      = try values.decodeIfPresent(String.self , forKey: .offset      )
    description = try values.decodeIfPresent(String.self , forKey: .description )
 
  }

  init() {

  }

}


struct Location: Codable {

  var street      : Street?      = Street()
  var city        : String?      = nil
  var state       : String?      = nil
  var country     : String?      = nil
  var postcode    : Int?         = nil
  var coordinates : Coordinates? = Coordinates()
  var timezone    : Timezone?    = Timezone()

  enum CodingKeys: String, CodingKey {

    case street      = "street"
    case city        = "city"
    case state       = "state"
    case country     = "country"
    case postcode    = "postcode"
    case coordinates = "coordinates"
    case timezone    = "timezone"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    street      = try values.decodeIfPresent(Street.self      , forKey: .street      )
    city        = try values.decodeIfPresent(String.self      , forKey: .city        )
    state       = try values.decodeIfPresent(String.self      , forKey: .state       )
    country     = try values.decodeIfPresent(String.self      , forKey: .country     )
    postcode    = try values.decodeIfPresent(Int.self         , forKey: .postcode    )
    coordinates = try values.decodeIfPresent(Coordinates.self , forKey: .coordinates )
    timezone    = try values.decodeIfPresent(Timezone.self    , forKey: .timezone    )
 
  }

  init() {

  }

}


struct Login: Codable {

  var uuid     : String? = nil
  var username : String? = nil
  var password : String? = nil
  var salt     : String? = nil
  var md5      : String? = nil
  var sha1     : String? = nil
  var sha256   : String? = nil

  enum CodingKeys: String, CodingKey {

    case uuid     = "uuid"
    case username = "username"
    case password = "password"
    case salt     = "salt"
    case md5      = "md5"
    case sha1     = "sha1"
    case sha256   = "sha256"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    uuid     = try values.decodeIfPresent(String.self , forKey: .uuid     )
    username = try values.decodeIfPresent(String.self , forKey: .username )
    password = try values.decodeIfPresent(String.self , forKey: .password )
    salt     = try values.decodeIfPresent(String.self , forKey: .salt     )
    md5      = try values.decodeIfPresent(String.self , forKey: .md5      )
    sha1     = try values.decodeIfPresent(String.self , forKey: .sha1     )
    sha256   = try values.decodeIfPresent(String.self , forKey: .sha256   )
 
  }

  init() {

  }

}


struct Dob: Codable {

  var date : String? = nil
  var age  : Int?    = nil

  enum CodingKeys: String, CodingKey {

    case date = "date"
    case age  = "age"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    date = try values.decodeIfPresent(String.self , forKey: .date )
    age  = try values.decodeIfPresent(Int.self    , forKey: .age  )
 
  }

  init() {

  }

}


struct Registered: Codable {

  var date : String? = nil
  var age  : Int?    = nil

  enum CodingKeys: String, CodingKey {

    case date = "date"
    case age  = "age"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    date = try values.decodeIfPresent(String.self , forKey: .date )
    age  = try values.decodeIfPresent(Int.self    , forKey: .age  )
 
  }

  init() {

  }

}


struct Id: Codable {

  var name  : String? = nil
  var value : String? = nil

  enum CodingKeys: String, CodingKey {

    case name  = "name"
    case value = "value"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    name  = try values.decodeIfPresent(String.self , forKey: .name  )
    value = try values.decodeIfPresent(String.self , forKey: .value )
 
  }

  init() {

  }

}


struct Picture: Codable {

  var large     : String? = nil
  var medium    : String? = nil
  var thumbnail : String? = nil

  enum CodingKeys: String, CodingKey {

    case large     = "large"
    case medium    = "medium"
    case thumbnail = "thumbnail"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    large     = try values.decodeIfPresent(String.self , forKey: .large     )
    medium    = try values.decodeIfPresent(String.self , forKey: .medium    )
    thumbnail = try values.decodeIfPresent(String.self , forKey: .thumbnail )
 
  }

  init() {

  }

}


struct Results: Codable {

  var gender     : String?     = nil
  var name       : Name?       = Name()
  var location   : Location?   = Location()
  var email      : String?     = nil
  var login      : Login?      = Login()
  var dob        : Dob?        = Dob()
  var registered : Registered? = Registered()
  var phone      : String?     = nil
  var cell       : String?     = nil
  var id         : Id?         = Id()
  var picture    : Picture?    = Picture()
  var nat        : String?     = nil

  enum CodingKeys: String, CodingKey {

    case gender     = "gender"
    case name       = "name"
    case location   = "location"
    case email      = "email"
    case login      = "login"
    case dob        = "dob"
    case registered = "registered"
    case phone      = "phone"
    case cell       = "cell"
    case id         = "id"
    case picture    = "picture"
    case nat        = "nat"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    gender     = try values.decodeIfPresent(String.self     , forKey: .gender     )
    name       = try values.decodeIfPresent(Name.self       , forKey: .name       )
    location   = try values.decodeIfPresent(Location.self   , forKey: .location   )
    email      = try values.decodeIfPresent(String.self     , forKey: .email      )
    login      = try values.decodeIfPresent(Login.self      , forKey: .login      )
    dob        = try values.decodeIfPresent(Dob.self        , forKey: .dob        )
    registered = try values.decodeIfPresent(Registered.self , forKey: .registered )
    phone      = try values.decodeIfPresent(String.self     , forKey: .phone      )
    cell       = try values.decodeIfPresent(String.self     , forKey: .cell       )
    id         = try values.decodeIfPresent(Id.self         , forKey: .id         )
    picture    = try values.decodeIfPresent(Picture.self    , forKey: .picture    )
    nat        = try values.decodeIfPresent(String.self     , forKey: .nat        )
 
  }

  init() {

  }

}


struct Info: Codable {

  var seed    : String? = nil
  var results : Int?    = nil
  var page    : Int?    = nil
  var version : String? = nil

  enum CodingKeys: String, CodingKey {

    case seed    = "seed"
    case results = "results"
    case page    = "page"
    case version = "version"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    seed    = try values.decodeIfPresent(String.self , forKey: .seed    )
    results = try values.decodeIfPresent(Int.self    , forKey: .results )
    page    = try values.decodeIfPresent(Int.self    , forKey: .page    )
    version = try values.decodeIfPresent(String.self , forKey: .version )
 
  }

  init() {

  }

}

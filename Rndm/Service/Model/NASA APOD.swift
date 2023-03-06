//
//  NASA APOD.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 06.03.2023.
//

import Foundation

struct NASAApod: Codable {

  var copyright      : String? = nil
  var date           : String? = nil
  var explanation    : String? = nil
  var hdurl          : String? = nil
  var mediaType      : String? = nil
  var serviceVersion : String? = nil
  var title          : String? = nil
  var url            : String? = nil

  enum CodingKeys: String, CodingKey {

    case copyright      = "copyright"
    case date           = "date"
    case explanation    = "explanation"
    case hdurl          = "hdurl"
    case mediaType      = "media_type"
    case serviceVersion = "service_version"
    case title          = "title"
    case url            = "url"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    copyright      = try values.decodeIfPresent(String.self , forKey: .copyright      )
    date           = try values.decodeIfPresent(String.self , forKey: .date           )
    explanation    = try values.decodeIfPresent(String.self , forKey: .explanation    )
    hdurl          = try values.decodeIfPresent(String.self , forKey: .hdurl          )
    mediaType      = try values.decodeIfPresent(String.self , forKey: .mediaType      )
    serviceVersion = try values.decodeIfPresent(String.self , forKey: .serviceVersion )
    title          = try values.decodeIfPresent(String.self , forKey: .title          )
    url            = try values.decodeIfPresent(String.self , forKey: .url            )
 
  }

  init() {

  }

}

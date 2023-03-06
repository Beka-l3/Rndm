//
//  RandomDogPicture.swift
//  Rndm
//
//  Created by Bekzhan Talgat on 06.03.2023.
//

import Foundation

struct RandomDogPicture: Codable {

  var message : String? = nil
  var status  : String? = nil

  enum CodingKeys: String, CodingKey {

    case message = "message"
    case status  = "status"
  
  }

  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)

    message = try values.decodeIfPresent(String.self , forKey: .message )
    status  = try values.decodeIfPresent(String.self , forKey: .status  )
 
  }

  init() {

  }

}

//
//  User.swift
//  TestsCI
//
//  Created by Jonas Schmid on 21/12/15.
//  Copyright © 2015 schmid. All rights reserved.
//

import ObjectMapper

class User : Mappable {
    var id: Int?
    var name: String?
    var email: String?

    required init?(_ map: Map) {}

    // Mappable
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        email <- map["email"]
    }
}

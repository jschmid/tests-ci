//
//  UserManager.swift
//  TestsCI
//
//  Created by Jonas Schmid on 21/12/15.
//  Copyright © 2015 schmid. All rights reserved.
//

import Foundation
import ObjectMapper

class UserManager {
    func getUser(json: String) -> User? {
        let user =  Mapper<User>().map(json)
        return user
    }
}

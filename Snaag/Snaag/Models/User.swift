//
//  User.swift
//  Snaag
//
//  Created by Jaremy Longley on 5/23/18.
//  Copyright © 2018 Jaremy Longley. All rights reserved.
//

import Foundation

class User: NSObject {
    var id: String?
    var userName: String?
    var password: String?
    var currentItemsToLend: [Item]?
    var lentItems: [Item]?
    var currentlySnaagged: [Item]?
    var snaagedHistory: [Item]?
    var savedItems: [Item]?
    var lenderLevel: Int?
    var snaaggerLevel: Int?
    
    convenience init(id: String) {
        self.init()
        self.id = id
    }
}

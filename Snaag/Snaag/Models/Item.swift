//
//  Item.swift
//  Snaag
//
//  Created by Jaremy Longley on 5/23/18.
//  Copyright © 2018 Jaremy Longley. All rights reserved.
//

import Foundation

/*
 An item is the model for all of the items that a user can lend to others or
 borrow for themselves
 
 The variables will be filled in based on what the user specifies in the edit screen
 */

class Item: NSObject {
    var id: String?
    var ownedBy: User?
    var category: ItemCategory?
    var photoUrl: String?
    var title: String?
    var details: String?
    var lendPrice: Double?
    var willAllowPickup: Bool?
    var willShip: Bool?
    var shipCost: Double?
    var willDeliver: Double?
    var willDeliverWithin: Int?
    var deliverCost: Double?
    var snaagDurationDays: Int?
    var snaagDurationHours: Int?
    
    convenience init(id: String) {
        self.init()
        self.id = id
    }
}

//
//  Report.swift
//  beatstreet 1.0
//
//  Created by Natalie Lampa on 12/4/2020.
//

import Foundation
import Firebase

struct Report {
  
    let ref: DatabaseReference?
    let key: String
    let type: String
    let street: String
    // intersection
//  let street1: String
//  let street2: String
//
    let ward: Int
//  let image: String
//
    // location
//  let long: Double
//  let lat: Double
    
    let votes: Int

//  let addedByUser: String
  
    init(type: String, street: String, ward: Int, votes: Int, key: String = "") {
        self.ref = nil
        self.key = key
        self.type = type
        self.street = street
        self.ward = ward
        self.votes = votes
//    self.addedByUser = addedByUser
  }

      init?(snapshot: DataSnapshot) {
        guard
          let value = snapshot.value as? [String: AnyObject], let type = value["type"] as? String,
            let street = value["street"] as? String, let ward = value["ward"] as? Int, let votes = value["votes"] as? Int else {
    //      , let addedByUser = value["addedByUser"] as? String else {
          return nil
        }

        self.ref = snapshot.ref
        self.key = snapshot.key
        self.type = type
        self.street = street
        self.ward = ward
        self.votes = votes

    //    self.addedByUser = addedByUser
      }

      func toAnyObject() -> Any {
        return [
          "street": street,
            "ward": ward,
            "votes": votes,
            "type": type
    //      "addedByUser": addedByUser,
          
        ]
      }
    
}


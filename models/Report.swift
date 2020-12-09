//
//  Report.swift
//  beatstreet
//
//  Created by Natalie Lampa on 12/4/20.
//

import Foundation
import Firebase

struct Report {
  
  let ref: DatabaseReference?
  let key: String
    
  let name: String
    // intersection
//  let street1: String
//  let street2: String
//
//  let ward: Int
//  let image: String
//
    // location
//  let long: Double
//  let lat: Double

//  let addedByUser: String
  
  init(name: String, key: String = "") {
    self.ref = nil
    self.key = key
    self.name = name
//    self.addedByUser = addedByUser
  }

  init?(snapshot: DataSnapshot) {
    guard
      let value = snapshot.value as? [String: AnyObject],
        let name = value["name"] as? String else {
//      , let addedByUser = value["addedByUser"] as? String else {
      return nil
    }

    self.ref = snapshot.ref
    self.key = snapshot.key
    self.name = name
//    self.addedByUser = addedByUser
  }

  func toAnyObject() -> Any {
    return [
      "name": name,
//      "addedByUser": addedByUser,
      
    ]
  }
}


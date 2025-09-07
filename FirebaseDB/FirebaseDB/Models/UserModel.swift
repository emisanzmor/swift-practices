//
//  UserModel.swift
//  FirebaseDB
//
//  Created by Emi Sanzmor on 07/09/25.
//

import Foundation

struct User: Codable, Identifiable {
    var id: Int
    var name: String
    var salary: Int
    
    enum CodingKeys: String, CodingKey {
        case id = "userID"
        case name = "userNA"
        case salary = "userSA"
    }
}

//
//  UserModel.swift
//  backendApp
//
//  Created by Uri on 4/2/23.
//

import Foundation

struct UserModel: Codable {
    
    let status: String
    let cookie: String
    let user: User
    
    struct User: Codable {
        let id: Int
        let username: String
        let email: String
        let registered: String
    }
}

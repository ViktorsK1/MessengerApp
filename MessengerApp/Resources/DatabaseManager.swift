//
//  DatabaseManager.swift
//  MessengerApp
//
//  Created by Виктор Куля on 22.05.2022.
//

import Foundation
import FirebaseDatabase

final class DatabaseManager {
    
    static let shared = DatabaseManager()
    
    private let database = Database.database().reference()
    
}

// MARK: - Account Manager

extension DatabaseManager {
    
    public func userExists(with name: String, comletion: @escaping ((Bool) -> Void)) {
        database.child(name).observeSingleEvent(of: .value) { snapshot in
            guard snapshot.value as? String != nil else {
                comletion(false)
                return
            }
            
            comletion(true)
        }
    }
    
    /// Inserts new user to database
    public func insertUser(with user: ChatAppUser) {
        database.child(user.name).setValue([
            "name": user.name
        ])
    }
    
}

struct ChatAppUser {
    let name: String
}

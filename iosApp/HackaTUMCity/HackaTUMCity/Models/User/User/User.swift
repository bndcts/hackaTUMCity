//
//  User.swift
//  HackaTUMCity
//
//  Created by Pascal Weißleder on 19.11.22.
//

import Foundation

public struct User {
    public var id: UUID?
    public var username: String
    var token: String?
    
    
    /// The `token` of the `User` transformed into the bearer token format
    var bearerToken: String? {
        token.map { "Bearer \($0)" }
    }
    
    init(id: UUID? = nil, username: String, token: String? = nil) {
        self.id = id
        self.username = username
        self.token = token
    }
    
    /// Loads the `User` instance from the User Defaults and the Keychain
    init?() {
        guard let userId = (UserDefaults.standard.object(forKey: UserData.userId) as? String).map(UUID.init(uuidString:)),
              let username = UserDefaults.standard.object(forKey: UserData.username) as? String,
              let token = KeyChain.load(UserData.keychainService) else {
            return nil
        }
        
        self.init(id: userId, username: username, token: token)
    }
    
    
    func removeLocalStorage() {
        UserDefaults.standard.removeObject(forKey: UserData.userId)
        UserDefaults.standard.removeObject(forKey: UserData.username)
        KeyChain.deleteElement(for: UserData.keychainService)
    }
    
    func saveToLocalStorage() {
        UserDefaults.standard.set(id?.uuidString, forKey: UserData.userId)
        UserDefaults.standard.set(username, forKey: UserData.username)
        
        guard let token = token else {
            return
        }
        
        KeyChain.store(element: token, for: UserData.keychainService)
    }
}


// MARK: User: Identifiable
extension User: Identifiable { }


// MARK: User: Codable
extension User: Codable {}

/// The Constants that are used to store and load the user from persistent storage
private enum UserData {
    static let userId = "userId"
    static let username = "username"
    /// The identifier used to  store and load the `token` from persistent storage
    static let keychainService = "xpense.ase.in.tum.de"
}

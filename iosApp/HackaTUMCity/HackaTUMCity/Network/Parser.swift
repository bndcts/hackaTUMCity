//
//  Parser.swift
//  HackaTUMCity
//
//  Created by Pascal Weißleder on 19.11.22.
//

import Foundation

public class Paser {
    
    
    public func fetchMessage() async throws -> Message {
        let url = URL(string: ConnectionHandler.serverUrl + "//api/messages")
        let (data, _) = try await URLSession.shared.data(from: url)
        return 
           
        }
    }
    
}

//
//  QuerryQuestion.swift
//  HackaTUMCity
//
//  Created by Pascal Weißleder on 19.11.22.
//

import Foundation

struct MessageResource: APIResource {
    typealias ModelType = Message
    var id: UUID?
    
    var methodPath: String {
        guard let id = id else {
            return "/messages"
        }
        return "/messages/\(id)"
    }
    
    var filter: String? {
        id != nil ? "!9_bDDxJY5" : nil
    }
}

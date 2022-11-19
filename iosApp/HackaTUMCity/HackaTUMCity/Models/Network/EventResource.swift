//
//  EventResource.swift
//  HackaTUMCity
//
//  Created by Pascal Weißleder on 19.11.22.
//

import Foundation

import Foundation

struct EventResource: APIResource {
    typealias ModelType = Event
    var id: UUID?
    
    var methodPath: String {
        guard let id = id else {
            return "/events"
        }
        return "/events/\(id)"
    }
    
    var filter: String? {
        id != nil ? "!9_bDDxJY5" : nil
    }
}

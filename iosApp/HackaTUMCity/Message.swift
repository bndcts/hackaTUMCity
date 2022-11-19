//
//  File.swift
//  HackaTUMCity
//
//  Created by Pascal Weißleder on 19.11.22.
//

import Foundation

public class Message: Identifiable, Codable{
    public let id: UUID
    var category: Category
    var info: String
    var isNotification: Bool {
        switch category {
        case Category.funFact,
              Category.construction,
              Category.serviceDisturbance:
            return true

        default : return false
        }
    }
    
    init(id: UUID, category: Category, info: String?) {
        self.id = id
        self.info = info ?? ""
        self.category = category
    }
}

//
//  MockModel.swift
//  HackaTUMCity
//
//  Created by Marc Beil on 19.11.22.
//

import Foundation

 public class MockModel: Model {
 //notifications.append
 
 override init(notifications: [Message], announcements: [Message]) {
     super.init(notifications: notifications, announcements: announcements)
     self.notifications.append(Message(id: UUID(), category: .funFact, info: "Message 1"))
     self.notifications.append(Message(id: UUID(), category: .funFact, info: "Message 2"))
     self.notifications.append(Message(id: UUID(), category: .funFact, info: "Message 3"))
     self.notifications.append(Message(id: UUID(), category: .funFact, info: "Message 4"))
 }
 }
 

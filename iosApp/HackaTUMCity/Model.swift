//
//  File.swift
//  HackaTUMCity
//
//  Created by Pascal Weißleder on 19.11.22.
//

import Foundation

public class Model: ObservableObject {
    @Published public internal(set) var user: User?
    @Published var notifications: [Message] = []
    @Published var announcements: [Message] = []
    
    init(notifications: [Message], announcements: [Message]) {
        self.notifications = notifications
        self.announcements = announcements
    }
    
    init() {}
    
    // Getter
    public func getNotifications( )-> [Message] { return notifications}
    
    public func getAnnouncements() ->  [Message] {return  announcements}
    
    public func getMessageWithId(messageId: Message.ID) -> Message? {
        return notifications.first(where: { $0.id == messageId })
    }
    
    public func getEventWithId(messageId: Message.ID) -> Event?{
        guard let message = getMessageWithId(messageId: messageId) else {
            return nil
        }
        if message is Event {
            return message as! Event
        }
        return nil
    }
    //Setter
    
    
    // Later for push -> call to server
    public func setNotification(){}
    
    public func setAnnouncement(){}
    
    public func dateDescription(messageId: Message.ID, isStart: Bool) -> String {
        guard let event = self.getEventWithId(messageId: messageId) else {
            return "Error: Could not find Message!"
        }
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        dateFormatter.locale = Locale(identifier: "de_DE")
        
        if isStart {
            return dateFormatter.string(from: event.timeStart)
        }
        
        guard let end = event.timeEnd else {
            return ""
        }
            return dateFormatter.string(from: end)
    }
}


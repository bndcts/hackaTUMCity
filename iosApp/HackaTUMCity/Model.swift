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
    //Setter
    
    
    // Later for push -> call to server
    public func setNotification(){}
    
    public func setAnnouncement(){}
    
    
}

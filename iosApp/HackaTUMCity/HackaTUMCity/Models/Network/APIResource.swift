//
//  APIResource.swift
//  HackaTUMCity
//
//  Created by Pascal Weißleder on 19.11.22.
//

import Foundation

protocol APIResource {
    associatedtype ModelType: Decodable
    var methodPath: String { get }
    var filter: String? { get }
}

extension APIResource {
    var url: URL {
        var components = URLComponents(string: "https://api.stackexchange.com/2.2")!  // Change
        components.path = methodPath
        components.queryItems = [
        URLQueryItem(name: "notificationsMessage", value: "stackoverflow"),
        URLQueryItem(name: "announcementsMessage", value: "desc"),
        URLQueryItem(name: "notificationEvent", value: "votes"),
        URLQueryItem(name: "AnnouncementMessage", value: "swiftui"),
        URLQueryItem(name: "pagesize", value: "10")
        ]
        if let filter = filter {
            components.queryItems?.append(URLQueryItem(name: "filter", value: filter))
        }
        return components.url!
    }
}

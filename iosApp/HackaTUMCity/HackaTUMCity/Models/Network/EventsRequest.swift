//
//  EventsRequest.swift
//  HackaTUMCity
//
//  Created by Pascal Weißleder on 19.11.22.
//

import Foundation

class EventsRequest{
    let url: URL
    init(url: URL) {
        self.url = url
    }
    
}
extension EventsRequest: NetworkRequest {
    func decode(_ data: Data) -> Event? {
           return Event(data: data)
       }
       
       func execute(withCompletion completion: @escaping (UIImage?) -> Void) {
           load(url, withCompletion: completion)
       }
}

//
//  File.swift
//  HackaTUMCity
//
//  Created by Pascal Weißleder on 19.11.22.
//

import Foundation
import SwiftUI

public class Event: Message, Codable {
    let timeStart: Date
    let timeEnd: Date
    let location: String   //Nacher
    let publisher: Publisher 
    
   init(id: UUID,
         category: Category,
         info: String?,
         timeStart: Date,
         timeEnd: Date,
        location: String, publisher: Publisher) {
       self.timeStart = timeStart
       self.timeEnd = timeEnd
       self.location = location
       self.publisher = publisher
       super.init(id: id, category: category, info: info)
    }
    
}

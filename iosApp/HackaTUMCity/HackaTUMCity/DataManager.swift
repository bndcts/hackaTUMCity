//
//  DataManager.swift
//  HackaTUMCity
//
//  Created by Paul Schneider on 19.11.22.
//

import SwiftUI
import Firebase

class DataManager : ObservableObject {
    @Published var messages: [Message] = []
    
    init() {
        fetchMessages()
    }
    
    func fetchMessages() {
        messages.removeAll()
        let db = Firestore.firestore()
        let ref = db.collection("Messages")
        ref.getDocuments { snapshot, error in
            guard error == nil else {
                print(error!.localizedDescription)
                return
            }
            
            if let snapshot = snapshot {
                for document in snapshot.documents {
                    let data = document.data()
                    
                    let id = data["id"] as? UUID ?? UUID()
                    let info = data["info"] as? String ?? ""
                    let category = data["category"] as? Category ?? Category.funFact
                    
                    let message = Message(id: id, category: category, info: info)
                    self.messages.append(message)
                }
            }
        }
    }
}

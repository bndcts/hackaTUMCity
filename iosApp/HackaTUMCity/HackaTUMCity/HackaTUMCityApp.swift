//
//  HackaTUMCityApp.swift
//  HackaTUMCity
//
//  Created by Pascal Weißleder on 19.11.22.
//

import SwiftUI
import Firebase

@main
struct HackaTUMCityApp: App {
    @StateObject public var model: Model = Model()
    // @StateObject var dataManager = DataManager()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            // ListView().environmentObject(dataManager)
            ContentView().environmentObject(model)
        }
    }
}

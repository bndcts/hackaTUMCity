//
//  HackaTUMCityApp.swift
//  HackaTUMCity
//
//  Created by Pascal Weißleder on 19.11.22.
//

import SwiftUI

@main
struct HackaTUMCityApp: App {
    @StateObject public var model: Model = Model()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(model)
        }
    }
}

//
//  ContentView.swift
//  HackaTUMCity
//
//  Created by Pascal Weißleder on 19.11.22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject public var model: MockModel
    
    var body: some View {
        if model.user != nil{
            Text("Login")
        }else{
            TabView {
                NotificationOverviewView()
                    .tabItem {
                        Image(systemName: "building.2")
                        Text("Notifications")
                    }
                Text("AnnouncementStub")
                    .tabItem {
                        Image(systemName: "text.bubble")
                        Text("Announcements")
                    }
                
            }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(MockModel(notifications: [], announcements: []))
    }
}

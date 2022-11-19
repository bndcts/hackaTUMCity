//
//  NotificationOverviewView.swift
//  HackaTUMCity
//
//  Created by Marc Beil on 19.11.22.
//

import SwiftUI

struct NotificationOverviewView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                ProfileButtonView()
            }.padding(.vertical,5)
            ScrollView {
                VStack {
                    NotificationComponentView()
                    NotificationComponentView()
                    NotificationComponentView()
                    NotificationComponentView()
                    NotificationComponentView()
                }
            }
            Spacer()
        }.background(.blue.opacity(0.2)).ignoresSafeArea()
    }
}

struct NotificationOverviewView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationOverviewView()
    }
    
}

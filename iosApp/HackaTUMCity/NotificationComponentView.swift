//  NotificationComponentView.swift
//  HackaTUMCity
//
//  Created by Marc Beil on 19.11.22.
//

import SwiftUI

struct NotificationComponentView: View {
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: CGFloat(20))
                .frame(height: 175)
                .foregroundColor(.white)
                .layoutPriority(1)
                .shadow(radius: 10)
            VStack() {
                Spacer()
                Text("Funfact")
                    .foregroundColor(.black).bold().font(.largeTitle)
                Text("Funfact of the day").font(.footnote)
                Spacer()
                HStack {
                    Text("Funfact").frame(alignment: .topLeading)
                    Spacer()
                }
                Spacer()
            }.padding(.horizontal,15)
        }.padding(.horizontal, 15)
            .padding(.vertical, 10)
        
    }
    
    struct NotificationComponentView_Previews: PreviewProvider {
        static var previews: some View {
            NotificationComponentView().background(.blue.opacity(0.2)).ignoresSafeArea()
        }
    }
}

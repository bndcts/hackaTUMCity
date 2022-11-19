//
//  ProfileButtonView.swift
//  HackaTUMCity
//
//  Created by Marc Beil on 19.11.22.
//

import SwiftUI

struct ProfileButtonView: View {
    var body: some View {
        //ProfileDetails($model.user.id)
        Button(action: {print("hello")}, label: { ZStack {
            Circle().foregroundColor(.white)
            Image(systemName: "person.circle")
                .resizable()
                .foregroundColor(.yellow)
        }.padding().frame(width: 80.0, height: 80.0)})
    }
}

struct ProfileButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileButtonView()
    }
}

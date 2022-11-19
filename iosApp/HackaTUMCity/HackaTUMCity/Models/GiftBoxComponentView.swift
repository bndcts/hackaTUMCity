//
//  GiftBoxComponentView.swift
//  HackaTUMCity
//
//  Created by Marc Beil on 19.11.22.
//

import SwiftUI

struct GiftBoxComponentView: View {
    @State private var title: String = ""
    @State private var category: Category = .giftBox
    @State private var text: String = ""
    var navigationTitle: String {
        return category.rawValue
    }
    var body: some View {
        NavigationView {
            VStack {
                // Text(category.rawValue).font(.title).bold()
                
                Picker("Category", selection: $category) {
                    Text("Gift Box").tag(Category.giftBox)
                    Text ("Post").tag(Category.post)
                    Text ("Relocation")
                        .tag(Category.relocation)
                }.pickerStyle(SegmentedPickerStyle())
                List{
                    
                    Section(header: Text("Title")){
                        TextField(
                            "   This is a title",
                            text: $title
                        ).frame(height: 30).disableAutocorrection(true)
                            .background(RoundedRectangle(cornerRadius: 5).foregroundColor(.secondary).opacity(0.2))
                            .padding(.vertical,10)
                            .font(.headline )
                    }
                    Section(header: Text("Description")) {
                        TextField(
                            "  Street + Number, What are you giftibng?",
                            text: $text
                        )
                        .frame(height: 120,alignment: .topLeading).disableAutocorrection(true)
                        .background(RoundedRectangle(cornerRadius: 5).foregroundColor(.secondary).opacity(0.2))
                        .padding(.vertical,10)
                        .font(.callout)
                    }
                }
                Spacer()
            }.navigationBarTitle(navigationTitle, displayMode: .inline).font(.title)
                .toolbar {
                    ToolbarItem(placement: .primaryAction) {
                        Button(action: {} ) {  // {viewModel.save}
                            Text("Save").bold()
                        }
                    }
                    ToolbarItem(placement: .cancellationAction) {
                        Button(action: {} ) {  // {viewModel.save}
                            Text("Cancle").bold()
                        }
                    }
                }
        }
    }
    
    
    struct GiftBoxComponentView_Previews: PreviewProvider {
        static var previews: some View {
            GiftBoxComponentView()
        }
    }
}

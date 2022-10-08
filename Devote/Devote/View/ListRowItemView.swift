//
//  ListRowItemView.swift
//  Devote
//
//  Created by Supapon Pucknavin on 8/10/2565 BE.
//

import SwiftUI

struct ListRowItemView: View {
    // MARK: - PROPERTY
    @Environment(\.managedObjectContext) var viewContext
    @ObservedObject var item: Item
    
    // MARK: - BODY
    var body: some View {
        Toggle(isOn: $item.completion) {
            Text(item.task ?? "")
                .font(.system(.title2, design: .rounded))
                .fontWeight(.heavy)
                .foregroundColor(item.completion ? Color.pink : Color.primary)
                .padding(.vertical, 12)
    
        }//: TOGGLE
        .toggleStyle(CheckboxStyle())
        .onReceive(item.objectWillChange) { _ in
            if self.viewContext.hasChanges {
                withAnimation {
                    try? self.viewContext.save()
                }
               
            }
        }
    }
}

// MARK: - PREVIEW
//struct ListRowItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListRowItemView(item: Item())
//    }
//}

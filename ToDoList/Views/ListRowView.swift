//
//  ListRowView.swift
//  ToDoList
//
//  Created by MEWO on 10.01.2022.
//

import SwiftUI

struct ListRowView: View {
    let item : ItemModel
    var body: some View {
        HStack{
            Image(systemName: item.isComplited ?  "checkmark.circle" : "circle")
                .foregroundColor(item.isComplited ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var item1 = ItemModel(title: "first", isComplited: true)
    static var item2 = ItemModel(title: "second", isComplited: false)
    static var previews: some View {
        Group{
            ListRowView(item: item1)
            ListRowView(item: item2)
               
        }
        .previewLayout(.sizeThatFits)
    }
}

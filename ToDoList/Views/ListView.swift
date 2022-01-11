//
//  ListView.swift
//  ToDoList
//
//  Created by MEWO on 10.01.2022.
//

import SwiftUI

struct ListView: View {
    
    @State var items : [ItemModel] = [
        ItemModel(title: "I will start make and app with SwiftUI", isComplited: true),
        ItemModel(title: "I put an app in AppStore", isComplited: false),
        ItemModel(title: "did i fuck your mom", isComplited: true)
    ]

    var body: some View {
        
        List{
            ForEach(items) { item  in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("To Do List ✍️ ")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView()))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
    }
}



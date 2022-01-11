//
//  ListViewModel.swift
//  ToDoList
//
//  Created by MEWO on 11.01.2022.
//

import Foundation
class ListViewModel :ObservableObject {
    @Published var items : [ItemModel] = []
    init(){
        getItems()
    }
    func getItems(){
        let newItems = [
            ItemModel(title: "I will start make and app with SwiftUI", isComplited: true),
            ItemModel(title: "I put an app in AppStore", isComplited: false),
            ItemModel(title: "did i fuck your mom", isComplited: true)
        ]
        //use contentOff for multiple items
        items.append(contentsOf: newItems)
    }
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)

    }
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
}

//
//  ListViewModel.swift
//  ToDoList
//
//  Created by MEWO on 11.01.2022.
//

import Foundation
 
/*
    CRUD FUNCTIONS
 CREATE
 READ
 UPDATE
 DELETE
 
 */


class ListViewModel :ObservableObject {
    @Published var items : [ItemModel] = [] {
        didSet{
            saveItems()
        }
    }
    let itemsKey : String = "item_list"
    init(){
        getItems()
    }
    func getItems(){
        
        //use contentOff for multiple items
        //items.append(contentsOf: newItems)
        
        guard
            let data  = UserDefaults.standard.data(forKey: itemsKey),
            let savedItems = try? JSONDecoder().decode([ItemModel].self, from: data)
        else {
            return
            
        }
    }
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)

    }
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    func addItem(title: String){
        let newItem = ItemModel(title: title, isComplited: false)
        items.append(newItem  )
    }
    func updateItem(item: ItemModel){
        if let index = items.firstIndex(where: {$0.id == item.id}){
            items[index] = item.updateCompletion()
        }
    }
    func saveItems(){
        //dizimizi json dataya dönüştürme işlemi
        if let encodedData = try? JSONEncoder().encode(items){
            UserDefaults.standard.set(encodedData, forKey: itemsKey)
        }
    }
}

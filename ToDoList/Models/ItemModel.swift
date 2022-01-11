//
//  ItemModel.swift
//  ToDoList
//
//  Created by MEWO on 11.01.2022.
//

import Foundation

struct ItemModel: Identifiable {
    let id : String = UUID().uuidString
    let title : String
    let isComplited : Bool
}

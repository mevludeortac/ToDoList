//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by MEWO on 10.01.2022.
//

import SwiftUI

/*
 
    MVVM
 
 MODEL: data point
 VIEW: our ui
 VIEWMODEL: manages data for view
 
 */


@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            //make navigate for all view
            NavigationView{
                ListView()
            }
        }
    }
}

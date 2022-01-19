//
//  NoItemsView.swift
//  ToDoList
//
//  Created by MEWO on 18.01.2022.
//

import SwiftUI

struct NoItemsView: View {
    var body: some View {
        ScrollView{
            VStack (spacing: 10) {
                Text("there are no items")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("maybe you should add a bunch of items")
                NavigationLink(
                    destination: AddView(),
                    label: {
                        Text("Add Something")
                            .foregroundColor(.purple)
                            .font(.headline)
                            
                    })
            }
            .multilineTextAlignment(.center)
            .padding(30)
        }.frame( maxWidth: .infinity,  maxHeight: .infinity)
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            NoItemsView()
                .navigationTitle("just title for now")
        }
    }
}

//
//  AddView.swift
//  ToDoList
//
//  Created by MEWO on 11.01.2022.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText : String = ""
    var body: some View {
        ScrollView{
            VStack {
                TextField("text something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color(#colorLiteral(red: 0.8824278141, green: 0.8824278141, blue: 0.8824278141, alpha: 1)))
                    .cornerRadius(7)
                
                Button(action: {
                    
                }, label: {
                    Text("save")
                        .foregroundColor(.white)
                            .font(.headline)
                        .frame(width: 100, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(13)
                })
                
            }.padding(20)

        }.navigationTitle("add an item ✎")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
    }
}

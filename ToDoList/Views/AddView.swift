//
//  AddView.swift
//  ToDoList
//
//  Created by MEWO on 11.01.2022.
//

import SwiftUI

struct AddView: View {
    //save butonuna tıkladığımızda saveButtonClicked fonksiyonu çalıştıktan sonra o ekranından çıkıp diğeer ekrana geri dönmesi için
    @Environment(\.presentationMode) var presentatitonMode
    @EnvironmentObject var listViewModel : ListViewModel
    @State var textFieldText : String = ""
    @State var alertTitle : String = ""
    @State var showalert : Bool = false
    var body: some View {
        ScrollView{
            VStack {
                TextField("text something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .background(Color(#colorLiteral(red: 0.8824278141, green: 0.8824278141, blue: 0.8824278141, alpha: 1)))
                    .cornerRadius(7)
                
                Button(action: saveButtonClicked, label: {
                    Text("save")
                        .foregroundColor(.white)
                            .font(.headline)
                        .frame(width: 100, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
                        .cornerRadius(13)
                })
                
            }.padding(20)

        }.navigationTitle("add an item ✎")
        .alert(isPresented: $showalert, content:getAlert)
    }
    
    func saveButtonClicked(){
        
        if textIsAppropriate(){
            listViewModel.addItem(title: textFieldText)
            presentatitonMode.wrappedValue.dismiss()
        }
        //else durumu için bir alert oluşturuyoruz
        
    }
    
    func textIsAppropriate() -> Bool  {
        if textFieldText.count < 2  {
            alertTitle = "your new item must be at least 2 char long"
            showalert.toggle()
            return false
        }
        return true
    }
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }.environmentObject(ListViewModel())
    }
}

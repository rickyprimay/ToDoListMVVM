//
//  AddView.swift
//  ToDoList
//
//  Created by Ricky Primayuda Putra on 13/10/24.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var textFieldText: String = ""
    @EnvironmentObject var listViewModel: ListViewModel
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView {
            TextField("Type something here ...", text: $textFieldText)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(10)
            
            Button(action: {
                saveButtonPressed()
            }, label: {
                Text("Save".uppercased())
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.accentColor)
                    .cornerRadius(10)
                    
            })
        }
        .padding(14)
        .navigationTitle("Add an Items ✒️")
        .alert(isPresented: $showAlert, content: {
            getAlert()
        })
    }
    func saveButtonPressed() {
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Your new todo item must be at least 3 characters long!!!🫤"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

#Preview {
    NavigationView {
        AddView()
    }
    .environmentObject(ListViewModel())
}

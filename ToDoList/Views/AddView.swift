//
//  AddView.swift
//  ToDoList
//
//  Created by Ricky Primayuda Putra on 13/10/24.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            TextField("Type something here ...", text: $textFieldText)
                .padding(.horizontal)
                .frame(height: 55)
                .background(Color(.systemGray2))
                .cornerRadius(10)
            
            Button(action: {
                
            }, label: {
                Text("Save".uppercased())
                    .foregroundColor(.white)
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
                    
            })
        }
        .padding(14)
        .navigationTitle("Add an Items ✒️")
    }
}

#Preview {
    NavigationView {
        AddView()
    }
}

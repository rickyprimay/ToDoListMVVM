//
//  ListView.swift
//  ToDoList
//
//  Created by Ricky Primayuda Putra on 13/10/24.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "Belajar iOS DEV", isComplete: false),
        ItemModel(title: "Belajar SwiftUI", isComplete: false),
        ItemModel(title: "Belajar Combine", isComplete: false),
        ItemModel(title: "Belajar Core Data", isComplete: false),
        ItemModel(title: "Belajar Networking", isComplete: false),
        ItemModel(title: "Belajar Unit Testing", isComplete: false),
        ItemModel(title: "Belajar UI Testing", isComplete: false),
        ItemModel(title: "Belajar Design Pattern", isComplete: false),
        ItemModel(title: "Belajar Clean Code", isComplete: false),
        ItemModel(title: "Belajar SOLID Principle", isComplete: false),
    ]
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("To Do List 📈")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination: AddView())
        )
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}


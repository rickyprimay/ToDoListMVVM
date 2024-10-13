//
//  ListView.swift
//  ToDoList
//
//  Created by Ricky Primayuda Putra on 13/10/24.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "Belajar iOS DEV",
        "Belajar SwiftUI",
        "Belajar Combine",
        "Belajar Core Data",
        "Belajar Networking",
        "Belajar Unit Testing",
        "Belajar UI Testing",
        "Belajar CI/CD",
        "Belajar Design Pattern",
        "Belajar Clean Code",
        "Belajar SOLID Principle",
        "Belajar Design System",
        "Belajar Git",
        "Belajar GitHub",
        "Belajar GitLab",
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
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


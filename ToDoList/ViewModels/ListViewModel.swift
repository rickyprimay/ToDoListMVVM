//
//  ListViewModel.swift
//  ToDoList
//
//  Created by Ricky Primayuda Putra on 14/10/24.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
      let newItems = [
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
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isComplete: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
        if let index = items.firstIndex(where: { $0.id == item.id } ) {
            items[index] = item.updateCompletion()
        }
    }
}

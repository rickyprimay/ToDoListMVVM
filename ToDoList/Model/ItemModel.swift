//
//  ItemModel.swift
//  ToDoList
//
//  Created by Ricky Primayuda Putra on 14/10/24.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isComplete: Bool
}

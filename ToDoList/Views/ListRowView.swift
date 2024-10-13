//
//  ListRowView.swift
//  ToDoList
//
//  Created by Ricky Primayuda Putra on 13/10/24.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(
                systemName: item.isComplete ? "checkmark.circle" : "circle"
            )
            .foregroundColor(item.isComplete ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}


#Preview {
    ListRowView(
        item: ItemModel(title: "Hei", isComplete: false)
    )
}

//
//  ListRowView.swift
//  ToDoList
//
//  Created by Ricky Primayuda Putra on 13/10/24.
//

import SwiftUI

struct ListRowView: View {
    
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}


#Preview {
    ListRowView(title: "Ricky Primayuda PUtra")
}

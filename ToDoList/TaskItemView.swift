//
//  TaskItemView.swift
//  ToDoList
//
//  Created by Zhansen Zhalel on 08.10.2023.
//

import SwiftUI

struct TaskItemView: View {
    var body: some View {
        HStack {
            Button {
                // mark task as completed
            } label: {
                ZStack {
                    Circle()
                        .stroke(.gray, lineWidth: 2)
                        .frame(width: 30, height: 30)
                }
            }
            
            Text("My task")
        }
    }
}

#Preview {
    TaskItemView()
}

//
//  TaskListView.swift
//  ToDoList
//
//  Created by Zhansen Zhalel on 08.10.2023.
//

import SwiftUI

struct TaskListView: View {
    var body: some View {
        NavigationStack {
            List {
                HStack {
                    Button {
                        // action
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
            .navigationTitle("To Do")
            .listStyle(.plain)
        }
    }
}

#Preview {
    TaskListView()
}

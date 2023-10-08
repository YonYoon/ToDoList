//
//  NewTaskView.swift
//  ToDoList
//
//  Created by Zhansen Zhalel on 08.10.2023.
//

import SwiftUI

struct NewTaskView: View {
    @ObservedObject var viewModel: TaskListViewModel
    
    @State private var taskText = ""
    @Binding var isShowingNewTask: Bool
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Your Task", text: $taskText)
            }
            .navigationTitle("New Task")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        isShowingNewTask = false
                    }
                }
                
                ToolbarItem(placement: .confirmationAction) {
                    Button("Add") {
                        tasks.append(Task(taskName: taskText, isCompleted: false))
                        isShowingNewTask = false
                    }
                }
            }
        }
    }
}

#Preview {
    NewTaskView(viewModel: TaskListViewModel(), isShowingNewTask: .constant(true))
}

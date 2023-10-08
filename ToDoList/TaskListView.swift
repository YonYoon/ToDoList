//
//  TaskListView.swift
//  ToDoList
//
//  Created by Zhansen Zhalel on 08.10.2023.
//

import SwiftUI

struct TaskListView: View {
    @ObservedObject var viewModel: TaskListViewModel
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(tasks) {task in
                    TaskItemView(taskName: task.taskName)
                }
            }
            .navigationTitle("To Do")
            .listStyle(.plain)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        viewModel.isShowingNewTask = true
                    } label: {
                        HStack(spacing: 3) {
                            Image(systemName: "plus.circle")
                            Text("New Task")
                        }
                    }
                }
            }
        }
        .sheet(isPresented: $viewModel.isShowingNewTask) {
            NewTaskView(viewModel: TaskListViewModel(), isShowingNewTask: $viewModel.isShowingNewTask)
        }
    }
}

#Preview {
    TaskListView(viewModel: TaskListViewModel())
}

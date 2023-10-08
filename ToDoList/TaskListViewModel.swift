//
//  TaskListViewModel.swift
//  ToDoList
//
//  Created by Zhansen Zhalel on 08.10.2023.
//

import SwiftUI

final class TaskListViewModel: ObservableObject {
    @Published var isShowingNewTask: Bool = false
    
    static func addNewTask(taskName: String) {
        let task = Task(taskName: taskName, isCompleted: false)
        tasks.append(task)
    }
}

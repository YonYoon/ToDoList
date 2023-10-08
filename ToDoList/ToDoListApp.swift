//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Zhansen Zhalel on 08.10.2023.
//

import SwiftUI

@main
struct ToDoListApp: App {
    @StateObject var viewModel = TaskListViewModel()
    
    var body: some Scene {
        WindowGroup {
            TaskListView(viewModel: viewModel)
        }
    }
}

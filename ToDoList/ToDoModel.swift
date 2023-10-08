//
//  ToDoModel.swift
//  ToDoList
//
//  Created by Zhansen Zhalel on 08.10.2023.
//

import Foundation

struct Task: Identifiable {
    var id = UUID()
    
    let taskName: String
    var isCompleted: Bool
}

var tasks: [Task] = [Task(taskName: "My task", isCompleted: false)]



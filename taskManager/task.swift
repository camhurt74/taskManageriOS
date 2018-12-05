//
//  task.swift
//  taskManager
//
//  Created by Cameron Hurt on 11/26/18.
//  Copyright © 2018 Cameron Hurt. All rights reserved.
//

import Foundation

class Task {
    let taskTitle: String
  
    var dueDate: Date
    
    var completed: Bool = false 
    init(taskTitle: String, dueDate: Date) {
        self.taskTitle = taskTitle
        self.dueDate = dueDate
        
    }
    

    
}

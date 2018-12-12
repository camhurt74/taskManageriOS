//
//  cell.swift
//  taskManager
//
//  Created by Cameron Hurt on 11/27/18.
//  Copyright © 2018 Cameron Hurt. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {
    
    @IBOutlet weak var taskTitleLabel: UILabel!
    
    @IBOutlet weak var dueDateLabel: UILabel!
    
    @IBOutlet weak var availabilityView: UIView!
    
   
    
    
    func setup(task: Task) {
        
      
        let formatter = DateFormatter()
        
        formatter.dateFormat = "yyyy-MM-dd"
        
        let myString = formatter.string(from: Date())
       
        let yourDate = formatter.date(from: myString)
        
       
        
        let dueDate = formatter.string(from:task.dueDate)
        
        print(dueDate)
        
        let date = formatter.date(from: dueDate)
        
        taskTitleLabel.text = task.taskTitle
        dueDateLabel.text = formatter.string(from:date!)
        print(date!)
        if task.completed == true {
           availabilityView.backgroundColor = .green
        } else {
            
            availabilityView.backgroundColor = .red
        }
   
        
    }
    


}

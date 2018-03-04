//
//  AddTaskViewController.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 2/12/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

protocol AddTaskDelegate {
    func didAddNewTask()
}

class AddTaskViewController: ViewController {

    // MARK: IBOutlets
    @IBOutlet private weak var taskTextField: UITextField!
    
    // Delegate to notify new task
    var delegate: AddTaskDelegate!
    
    // Get latest text field value
    lazy var input: String? = {
        return taskTextField.text
    }()
    
    override func initialSetup() {
        // Allow text field editing on view load
        self.taskTextField.becomeFirstResponder()
    }
}

// MARK:- IBActions
extension AddTaskViewController {
    
    @IBAction func doneButtonTap(_ sender: Any) {
        // Check if the input is valid
        guard let input = taskTextField.text, !input.isEmpty else {
            // Show error if the input is not valid
            display(error: .emptyInput)
            // Return
            return
        }
        
        // Then perform the database operation
        persistTask(input: input)
        
        // Notify that task has been added
        delegate.didAddNewTask()
        
        // Dismiss
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func closeButtonTap(_ sender: Any) {
        // Dismiss the controller when the user taps on close
        self.dismiss(animated: true, completion: nil)
    }
}

extension AddTaskViewController {
    // Save task in database
    func persistTask(input: String) {
        // Perform the save operation
        let task = Task(context: PersistenceManager.context)
        task.title = input
        task.creationTime = Date() as NSDate
        PersistenceManager.saveContext()
    }
}

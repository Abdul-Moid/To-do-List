//
//  AddTaskViewController.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 2/12/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet private weak var taskTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK:- IBActions
extension AddTaskViewController {
    
    @IBAction private func doneButtonTap(_ sender: Any) {
        // TODO: Need to handle the case when text is nil
        guard let input = taskTextField.text,  !input.isEmpty else { return }
        
        // Perform the save operation
        let task = Task(context: PersistenceManager.context)
        task.title = input
        task.creationTime = Date() as NSDate
        PersistenceManager.saveContext()
        
        // Dismiss the controller after completion
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func closeButtonTap(_ sender: Any) {
        // Dismiss the controller when the user taps on close
        self.dismiss(animated: true, completion: nil)
    }
}

//
//  TaskDetailsViewController.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 2/25/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

class TaskDetailsViewController: ViewController {
    /// Task Name text field
    @IBOutlet private weak var taskNameTextField: TextField!
    
    /// Title for view controller
    private let titleString = "Task Details"
    /// Task object associated with the view
    var task: Task?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateView()
    }
    
    // Any addional setup goes here
    override func initialSetup() {
        // Set title for the view
        title = titleString
    }
    
    // Update the data with views
    private func updateView() {
        guard let task = task else { return }
        
        taskNameTextField.text = task.title
    }
}

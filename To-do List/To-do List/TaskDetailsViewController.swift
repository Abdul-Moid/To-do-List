//
//  TaskDetailsViewController.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 2/25/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

class TaskDetailsViewController: UIViewController {
    @IBOutlet weak var taskNameTextField: TextField!
    var task: Task?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateView()
    }
    
    private func updateView() {
        guard let task = task else { return }
        
        taskNameTextField.text = task.title
    }
}

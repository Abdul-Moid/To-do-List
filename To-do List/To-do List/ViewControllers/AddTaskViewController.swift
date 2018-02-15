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
    
    // Get latest text field value
    lazy var input: String? = {
        return taskTextField.text
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

// MARK:- IBActions
extension AddTaskViewController {
    
    @IBAction func closeButtonTap(_ sender: Any) {
        // Dismiss the controller when the user taps on close
        self.dismiss(animated: true, completion: nil)
    }
}

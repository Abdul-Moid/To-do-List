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
        // TODO: Write the logic for entering data in database
    }
    
    @IBAction func closeButtonTap(_ sender: Any) {
        // Dismiss the control when the user taps on close
        self.dismiss(animated: true, completion: nil)
    }
}

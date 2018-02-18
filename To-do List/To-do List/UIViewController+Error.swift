//
//  UIViewController+Error.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 2/16/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit
import Foundation

protocol ErrorDisplayable {
    func display(error: TodoListError)
}

extension UIViewController: ErrorDisplayable {
    func display(error: TodoListError) {
        let alert = UIAlertController(alertDescription: error.alertDescription)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}

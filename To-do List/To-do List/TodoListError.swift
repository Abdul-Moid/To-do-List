//
//  Errors.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 2/16/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import Foundation

enum TodoListErrors: Error, CustomStringConvertible {
    /// Input is empty
    case emptyInput
    /// Database fetch error
    case fetchError
    
    var description: String {
        switch self {
        case .emptyInput:
            return "Please provide a valid input"
        case .fetchError:
            return "No saved tasks. Please add one."
        }
    }

}

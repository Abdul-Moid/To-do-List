//
//  TodoListErrors.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 2/16/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import Foundation

enum TodoListError: Error, CustomStringConvertible {
    /// Input is empty
    case emptyInput
    /// Database fetch error
    case fetchError
    /// Data serialization error
    case serializationError
    
    var description: String {
        switch self {
        case .emptyInput:
            return "Please provide a valid input"
        case .fetchError:
            return "No saved tasks."
        case .serializationError:
            return "Failed to serialize data"
        }
    }
    
    var alertDescription: AlertDescription {
        switch self {
        case .emptyInput:
            return AlertDescription(title: "Input Error", message: self.description)
        case .fetchError:
            return AlertDescription(title: "Fetch Error", message: self.description)
        case .serializationError:
            return AlertDescription(title: "Serialization Error", message: self.description)
        }
    }
}

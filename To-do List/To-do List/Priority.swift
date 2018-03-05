//
//  Priority.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 2/18/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import Foundation

// Can be used to initialize strings
protocol CustomStringInitializable {
    init(string: String) throws
}

enum Priority: CustomStringInitializable,CustomStringConvertible {
    /// Represent low priority tasks
    case low
    /// Represent medium priority tasks
    case medium
    /// Represent high priority tasks
    case high
    
    // Describes priority of a tasks
    var description: String {
        switch self {
        case .low:
            return "lowPriority"
        case .medium:
            return "mediumPriority"
        case .high:
            return "highPriority"
        }
    }
    
    // Initialize with string
    init(string: String) throws {
        switch string {
        case Priority.low.description:
            self = .low
        case Priority.medium.description:
            self = .medium
        case Priority.high.description:
            self = .high
            
        default:
            throw TodoListError.serializationError
        }
    }
    
}

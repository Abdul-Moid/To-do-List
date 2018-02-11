//
//  Task.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 2/10/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import Foundation

/**
 Struct that represents each individual To-do List Item
 */
struct Task {
    /// Title for a user's task
    let title: String
    /// Detailed description for user's task
    let description: String
    /// Time the user created the task
    let creationTime: Date
    
    // Convenience initliazer
    init(title: String, description: String) {
        self.init(title: title, description: description, creationTime: Date())
    }
    
    // Concrete initializer
    private init(title: String, description: String, creationTime: Date) {
        self.title = title
        self.description = description
        self.creationTime = creationTime
    }
}

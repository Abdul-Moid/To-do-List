//
//  NSDate+String.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 2/21/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import Foundation

extension NSDate {
    public func string(with format: String) -> String {
        let formatter = DateFormatter()
        // initially set the format based on your datepicker date
        formatter.dateFormat = format
        // Return the formatted string
        return formatter.string(from: Date())
    }
}

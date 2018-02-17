//
//  UIAlertController+AlertDescription.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 2/16/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import Foundation
import UIKit

struct AlertDescription {
    /// Title for UIAlert
    let title: String
    /// Message for UIAlert
    let message: String
}

// Adding alert description convenience initializer
extension UIAlertController {
    convenience init(alertDescription: AlertDescription) {
        self.init(title: alertDescription.title, message: alertDescription.message, preferredStyle: .alert)
    }
}

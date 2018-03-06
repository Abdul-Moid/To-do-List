//
//  Editable.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 3/5/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import Foundation
import UIKit

// Allows editing on views
protocol Editable {
}

extension Editable where Self: TextField {
    func animateEditOperation() {
        layer.borderWidth = 1
        layer.borderColor = UIColor.lightGray.cgColor
    }
}

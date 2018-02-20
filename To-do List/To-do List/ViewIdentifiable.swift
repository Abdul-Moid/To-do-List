//
//  ViewIdentifiable.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 2/19/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import Foundation
import UIKit

// Makes a class identifiable
protocol ViewIdentifiable {
    static var id: String { get }
}

extension UIViewController: ViewIdentifiable {
    static var id: String {
        return String(describing: self)
    }
}

extension UITableViewCell: ViewIdentifiable {
    static var id: String {
        return String(describing: self)
    }
}


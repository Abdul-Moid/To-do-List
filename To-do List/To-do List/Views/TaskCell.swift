//
//  TaskCell.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 2/10/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

class TaskCell: UITableViewCell {
    
    // MARK:- Cell Identifier
    static let identifier = "TaskCell"

    // MARK:- Outlets
    @IBOutlet weak var titleLabel: UILabel!
    
    // MARK:- Initialization
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}

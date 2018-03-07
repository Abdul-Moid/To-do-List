//
//  TaskCell.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 2/10/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

class TaskCell: UITableViewCell {

    // MARK:- Outlets
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var creationDateLabel: UILabel!
    
    // MARK:- Initialization
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // Update the cell based on task object
    func update(with model: Task) {
        titleLabel.attributedText = taskTitle(for: model)
        creationDateLabel.text = "Created:\(model.creationTime!.string(with: "dd/MM/yy"))"
    }
    
    // Title style
    private func taskTitle(for task: Task) -> NSAttributedString? {
        guard let title = task.title else { return nil }
        
        let attributedString = NSMutableAttributedString(string: title)
        attributedString.addAttribute(NSAttributedStringKey.strikethroughStyle, value: 1, range: NSMakeRange(0, attributedString.length))
        return attributedString
    }
}

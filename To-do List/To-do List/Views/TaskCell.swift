//
//  TaskCell.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 2/10/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

class TaskCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

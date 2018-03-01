//
//  PriorityViewButton.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 2/26/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

// TODO: Make a generic class for Button
class PriorityViewButton: UIButton, ViewCustomizable {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 1
        titleLabel?.font = UIFont.systemFont(ofSize: 12.0, weight: .semibold)
    }
}

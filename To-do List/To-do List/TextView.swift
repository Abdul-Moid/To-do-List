//
//  TextView.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 2/26/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

class TextView: UITextView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup() {
        layer.borderWidth  = 1
        layer.borderColor  = UIColor.lightGray.cgColor
        layer.cornerRadius = 5
    }
}

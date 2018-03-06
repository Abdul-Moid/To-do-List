//
//  TextView.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 2/26/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

class TextView: UITextView, ViewCustomizable, Editable {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        layer.borderWidth  = 1
        layer.cornerRadius = 5
        layer.borderColor  = UIColor.clear.cgColor
    }
}

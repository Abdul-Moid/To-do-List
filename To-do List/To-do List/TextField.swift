//
//  TextField.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 3/2/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

class TextField: UITextField, Editable, ViewCustomizable {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        // Remove the border
        borderStyle = .none
        layer.borderWidth  = 0
        layer.borderColor  = UIColor.clear.cgColor
    }

}

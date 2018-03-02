//
//  PriorityView.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 2/26/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

class PriorityView: CustomReplaceableView, ViewCustomizable {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        layer.cornerRadius = 5
        clipsToBounds = true
    }
}

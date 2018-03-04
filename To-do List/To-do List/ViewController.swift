//
//  ViewController.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 3/3/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initialSetup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
     Perform any additional view setup at load
     - Tweaks related to UI
     - Operations need to be performed on load
     
     */
    open func initialSetup() { }
    
    
    /**
     Perform any data update
     - Any data changes performed in the app go here
     
     */
    open func update<T: AnyObject>(with model: T?) { }
}

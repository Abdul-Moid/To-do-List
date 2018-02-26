//
//  UIViewController+StoryboardInstantiable.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 2/24/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    /// Instance of ViewController from Storyboard
    static func instantiate(from storyboard: Storyboard) -> Self {
        return storyboard.viewController(viewControllerClass: self)
    }
}

/// Storyboards in the App
enum Storyboard: String {
    case Main, AddTask, TaskDetail
    
    /// Instance of UIStoryboard
    var instance: UIStoryboard {
        return UIStoryboard.init(name: self.rawValue, bundle: Bundle.main)
    }
    
    /// View controller from Storyboard
    func viewController<T: UIViewController> (viewControllerClass: T.Type) -> T {
        let storyboardId = (viewControllerClass as UIViewController.Type).id
        return instance.instantiateViewController(withIdentifier: storyboardId) as! T
    }
}

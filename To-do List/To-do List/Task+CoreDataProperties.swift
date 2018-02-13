//
//  Task+CoreDataProperties.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 2/12/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//
//

import Foundation
import CoreData

extension Task {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Task> {
        return NSFetchRequest<Task>(entityName: "Task")
    }

    @NSManaged public var creationTime: NSDate?
    @NSManaged public var details: String?
    @NSManaged public var title: String?

}

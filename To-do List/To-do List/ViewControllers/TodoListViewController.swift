//
//  TodoListViewController.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 2/10/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit
import CoreData

class TodoListViewController: UIViewController {
    
    // MARK:- Outlets
    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet private weak var addButton: UIBarButtonItem!
    
    // MARK:- Properties
    private let titleString = "To-do List"
    private var tasks = [Task]()
    
    // MARK:- View Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetup()
        fetchSavedItems()
    }
}

// MARK:- Database insertion and retreival
extension TodoListViewController {
    @IBAction func unwindToListViewController(segue: UIStoryboardSegue) {
        // TODO: Need to handle the case when text is nil
        guard let addTaskVC = segue.source as? AddTaskViewController,
        let input = addTaskVC.input, !input.isEmpty else { return }
        
        // Perform the save operation
        let task = Task(context: PersistenceManager.context)
        task.title = input
        task.creationTime = Date() as NSDate
        PersistenceManager.saveContext()
        
        // Call to fetch saved task items
        fetchSavedItems()
        
        // Reload the tableView to reflect changes
        tableView.reloadData()
    }
    
    func fetchSavedItems() {
        // Create a fetch request to fetch latest tasks saved
        let fetchRequest: NSFetchRequest<Task> = Task.fetchRequest()
    
        // Need to handle the failed requests
        guard let tasks = try? PersistenceManager.context.fetch(fetchRequest) else { return }
        
        // Update the local tasks variable
        self.tasks = tasks
    }
}

// MARK:- Initial Setup
extension TodoListViewController {
    func initialSetup() {
        // Set title for the view
        self.title = titleString
        
        // Set the tableView delegate and data source
        tableView.dataSource = self
        tableView.delegate = self
        
        // Register task cell to be dequeued by tableView
        tableView.register(UINib(nibName: TaskCell.identifier, bundle: nil), forCellReuseIdentifier: TaskCell.identifier)
    }
}

// MARK:- Table View Data Source
extension TodoListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TaskCell.identifier, for: indexPath) as! TaskCell
        cell.titleLabel.text = tasks[indexPath.row].title
        return cell
    }
}

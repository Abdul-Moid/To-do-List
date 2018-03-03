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
    @IBAction func addButtonTap(_ sender: Any) {
        // Instantiate the view controller from storyboard
        let addTaskVC = AddTaskViewController.instantiate(from: .AddTask)
        
        // Set the delegate
        addTaskVC.delegate = self
        
        // Set the presentation context
        addTaskVC.modalPresentationStyle = .overCurrentContext
        
        // Present view controller
        present(addTaskVC, animated: true, completion: nil)
    }
}

// MARK:- Add Task Delegate
extension TodoListViewController: AddTaskDelegate {
    // Called when a new task is added
    func didAddNewTask() {
        // Call to fetch saved task items
        fetchSavedItems()
        
        // Reload the tableView to reflect changes
        tableView.reloadData()
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
        tableView.register(UINib(nibName: TaskCell.id, bundle: nil), forCellReuseIdentifier: TaskCell.id)
    }
    
    // Database retreival
    func fetchSavedItems() {
        // Create a fetch request to fetch latest tasks saved
        let fetchRequest: NSFetchRequest<Task> = Task.fetchRequest()
        
        // Need to handle the failed requests
        guard let tasks = try? PersistenceManager.context.fetch(fetchRequest) else { return }
        
        // Update the local tasks variable
        self.tasks = tasks
    }
}

// MARK:- Table View Data Source
extension TodoListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TaskCell.id, for: indexPath) as! TaskCell
        cell.titleLabel.text = tasks[indexPath.row].title
        cell.creationDateLabel.text = "Created:\(tasks[indexPath.row].creationTime!.string(with: "dd/MM/yy"))"
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        // Return if editing style is not delete
        if editingStyle != .delete { return }
        
        // Delete the task at that index
        PersistenceManager.context.delete(tasks[indexPath.row])
        PersistenceManager.saveContext()
        
        // Fetch tableView tasks
        fetchSavedItems()
        
        // Reload tableView once deleted
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Deselect the selected row
        tableView.deselectRow(at: indexPath, animated: true)
        
        // Create an instance of TaskDetailsViewController
        let detailsVC = TaskDetailsViewController.instantiate(from: .TaskDetail)
        
        // Pipe the selected task object
        detailsVC.task = tasks[indexPath.row]
        
        // Push to TaskDetailsViewController
        navigationController?.pushViewController(detailsVC, animated: true)
    }
}

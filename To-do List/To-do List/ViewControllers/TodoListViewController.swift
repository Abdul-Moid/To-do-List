//
//  TodoListViewController.swift
//  To-do List
//
//  Created by Abdulmoid Mohammed on 2/10/18.
//  Copyright © 2018 Abdul-Moid. All rights reserved.
//

import UIKit

class TodoListViewController: UIViewController {
    
    // MARK:- Outlets
    @IBOutlet private weak var tableView: UITableView!
    @IBOutlet private weak var addButton: UIBarButtonItem!
    
    // MARK:- Properties
    private let cellIdentifier = "TaskCell"
    private let titleString = "To-do List"
    
    // MARK:- View Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialSetup()
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
        tableView.register(UINib(nibName: cellIdentifier, bundle: nil), forCellReuseIdentifier: cellIdentifier)
    }
}

// MARK:- Table View Data Source
extension TodoListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! TaskCell
        return cell
    }
}

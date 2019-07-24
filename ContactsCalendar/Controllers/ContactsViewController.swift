//
//  ContactsViewController.swift
//  ContactsCalendar
//
//  Created by Gabriel Henrique on 24/07/19.
//  Copyright © 2019 Gabriel Henrique. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController {
    weak var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutNavigationBar()
    }
    
    func layoutNavigationBar() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.barTintColor = .red
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationItem.title = "Contacts"
    }
    
    override func loadView() {
        super.loadView()
        
        let tableViewContacts: UITableView = {
            let tableView = UITableView()
            
            tableView.translatesAutoresizingMaskIntoConstraints = false
            tableView.backgroundColor = .red
            tableView.layoutMargins = .zero
            tableView.separatorInset = .zero
            
            return tableView
        }()
        
        self.tableView = tableViewContacts
        self.view.addSubview(tableViewContacts)
        
        NSLayoutConstraint.activate([
            self.view.safeAreaLayoutGuide.topAnchor.constraint(equalTo: tableViewContacts.topAnchor),
            self.view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: tableViewContacts.bottomAnchor),
            self.view.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: tableViewContacts.leadingAnchor),
            self.view.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: tableViewContacts.trailingAnchor)
        ])
    }
}

//
//  ContactsList.swift
//  ContactsCalendar
//
//  Created by Gabriel Henrique on 24/07/19.
//  Copyright © 2019 Gabriel Henrique. All rights reserved.
//

import UIKit

protocol ContactsListDelegate: class {
    func userSelectedContact(_ contact: String)
}

class ContactsList: UIView, ViewCode {
    weak var delegate: ContactsListDelegate?
    
    init(delegate: ContactsListDelegate) {
        self.delegate = delegate
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let contactsTableView: UITableView = {
        let tableView = UITableView()
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .red
        
        return tableView
    }()
    
    func setup() {
        setupComponents()
        setupConstraints()
        setupExtraConfiguration()
    }
    
    func setupComponents() {
        addSubview(contactsTableView)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            self.safeAreaLayoutGuide.topAnchor.constraint(equalTo: contactsTableView.topAnchor),
            self.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: contactsTableView.bottomAnchor),
            self.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: contactsTableView.leadingAnchor),
            self.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: contactsTableView.trailingAnchor)
        ])
    }
    
    func setupExtraConfiguration() {
        contactsTableView.removeSpacing()
    }
}

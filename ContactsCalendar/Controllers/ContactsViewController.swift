//
//  ContactsViewController.swift
//  ContactsCalendar
//
//  Created by Gabriel Henrique on 24/07/19.
//  Copyright © 2019 Gabriel Henrique. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutNavigationBar()
    }
    
    override func loadView() {
        view = ContactsList(delegate: self)
    }
    
    func layoutNavigationBar() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.barTintColor = .red
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationItem.title = "Contacts"
    }
}

extension ContactsViewController: ContactsListDelegate {
    func userSelectedContact(_ contact: String) {
        print("Test")
    }
}

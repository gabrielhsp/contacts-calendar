//
//  ContactDetailViewController.swift
//  ContactsCalendar
//
//  Created by Gabriel Henrique on 25/07/19.
//  Copyright © 2019 Gabriel Henrique. All rights reserved.
//

import UIKit

class ContactDetailViewController: UIViewController {
    override func loadView() {
        view = ContactDetail(delegate: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ContactDetailViewController: ContactDetailDelegate {
    func userHasBeenLoaded() {
    }
}

//
//  ContactsViewController.swift
//  ContactsCalendar
//
//  Created by Gabriel Henrique on 24/07/19.
//  Copyright © 2019 Gabriel Henrique. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController {
    static let sceneIdentifier = "Contacts"
    static let textAttributes = [ NSAttributedString.Key.foregroundColor : UIColor.white ]
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        useNavigationBarDarken()
        useLargeTitlesOnNavigationBar(with: ContactsViewController.sceneIdentifier)
    }
    
    override func loadView() {
        view = ContactsList(delegate: self)
    }
}

extension ContactsViewController: ContactsListDelegate {
    func userSelectedContact(_ contact: String) {
        print("Test")
    }
}

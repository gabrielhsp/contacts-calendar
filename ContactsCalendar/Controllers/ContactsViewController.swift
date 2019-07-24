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
        layoutNavigationBar()
    }
    
    override func loadView() {
        view = ContactsList(delegate: self)
    }
    
    func layoutNavigationBar() {
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.barTintColor = Constants.Colors.grayDark
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.largeTitleTextAttributes = ContactsViewController.textAttributes
        navigationController?.navigationBar.titleTextAttributes = ContactsViewController.textAttributes
        navigationItem.title = ContactsViewController.sceneIdentifier
    }
}

extension ContactsViewController: ContactsListDelegate {
    func userSelectedContact(_ contact: String) {
        print("Test")
    }
}

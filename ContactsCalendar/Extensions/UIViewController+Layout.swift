//
//  UIViewController+Layout.swift
//  ContactsCalendar
//
//  Created by Gabriel Henrique on 26/07/19.
//  Copyright © 2019 Gabriel Henrique. All rights reserved.
//

import UIKit

extension UIViewController {
    func useLargeTitlesOnNavigationBar(with sceneTitle: String?) {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = ContactsViewController.textAttributes
        navigationController?.navigationBar.titleTextAttributes = ContactsViewController.textAttributes
        
        if sceneTitle != nil {
            navigationItem.title = sceneTitle
        }
    }
    
    func useNavigationBarDarken() {
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.barTintColor = Constants.Colors.grayDark
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.isTranslucent = false
    }
}

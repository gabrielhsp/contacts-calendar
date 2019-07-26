//
//  UITableView+Layout.swift
//  ContactsCalendar
//
//  Created by Gabriel Henrique on 24/07/19.
//  Copyright © 2019 Gabriel Henrique. All rights reserved.
//

import UIKit

extension UITableView {
    func removeSpacing() {
        layoutMargins = .zero
        separatorInset = .zero
    }
}

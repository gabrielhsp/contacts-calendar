//
//  UITableView.swift
//  ContactsCalendar
//
//  Created by Gabriel Pereira on 22/07/19.
//  Copyright © 2019 Gabriel Pereira. All rights reserved.
//

extension UITableView {
	func removeSpacing() {
		self.layoutMargins = .zero
		self.separatorInset = .zero
	}
}
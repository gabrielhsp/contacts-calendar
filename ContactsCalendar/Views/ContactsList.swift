//
//  ContactsList.swift
//  ContactsCalendar
//
//  Created by Gabriel Pereira on 22/07/19.
//  Copyright © 2019 Gabriel Pereira. All rights reserved.
//

import UIKit

protocol ContactsListDelegate: class {
	func userSelectedContact(_ contact: String)
}

class ContactsList: UIView {
	weak var delegate: ContactsListDelegate?

	init(delegate: ContactsListDelegate) {
		self.delegate = delegate
		super.init(frame: .zero)
		setup()
	}

	let contactsTableView: UITableView = {
		let tableView = UITableView()

		tableView.translatesAutoresizingMaskIntoConstraints = false
		tableView.backgroundColor = .red

		return tableView
	}()
}


extension ContactsList: ViewCode {
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
			self.view.safeAreaLayoutGuide.topAnchor.constraint(equalTo: tableViewContacts.topAnchor),
			self.view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: tableViewContacts.bottomAnchor),
			self.view.safeAreaLayoutGuide.leadingAnchor.constraint(equalTo: tableViewContacts.leadingAnchor),
			self.view.safeAreaLayoutGuide.trailingAnchor.constraint(equalTo: tableViewContacts.trailingAnchor)
		])
	}

	func setupExtraConfiguration() {
		contactsTableView.removeSpacing()
	}
}


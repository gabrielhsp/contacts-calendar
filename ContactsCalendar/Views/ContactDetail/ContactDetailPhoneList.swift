//
//  ContactDetailPhoneList.swift
//  ContactsCalendar
//
//  Created by Gabriel Henrique on 12/08/19.
//  Copyright © 2019 Gabriel Henrique. All rights reserved.
//

import UIKit

class ContactDetailPhoneList: UITableView {
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        setupTableView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ContactDetailPhoneList: UITableViewDelegate, UITableViewDataSource {
    func setupTableView() {
        delegate = self
        dataSource = self
        register(ContactDetailPhoneTableViewCell.self, forCellReuseIdentifier: ContactDetailPhoneTableViewCell.identifier)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return ContactDetailPhoneTableViewCell.heightOfCell
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ContactDetailPhoneTableViewCell.identifier, for: indexPath) as? ContactDetailPhoneTableViewCell else {
            return UITableViewCell()
        }
        
        cell.phoneIdentifier.text = "Home"
        cell.phoneNumber.text = "(11) 991-992-993"
        
        return cell
    }
}

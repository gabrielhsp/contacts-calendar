//
//  ContactDetailPhoneTableViewCell.swift
//  ContactsCalendar
//
//  Created by Gabriel Henrique on 12/08/19.
//  Copyright © 2019 Gabriel Henrique. All rights reserved.
//

import UIKit

class ContactDetailPhoneTableViewCell: UITableViewCell {
    static let identifier: String = "ContactDetailPhoneTableViewCell"
    static let heightOfCell: CGFloat = 50
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let phoneIdentifier: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = .lightGray
        
        return label
    }()
    
    let phoneNumber: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .lightGray
        
        return label
    }()
}

extension ContactDetailPhoneTableViewCell: ViewCode {
    func setup() {
        setupComponents()
        setupConstraints()
        setupExtraConfiguration()
    }
    
    func setupComponents() {
        contentView.addSubview(phoneIdentifier)
        contentView.addSubview(phoneNumber)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            phoneIdentifier.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            phoneIdentifier.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            phoneNumber.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            phoneNumber.centerYAnchor.constraint(equalTo: phoneIdentifier.centerYAnchor)
        ])
    }
    
    func setupExtraConfiguration() {
        self.backgroundColor = Constants.Colors.grayDark
        self.selectionStyle = .none
    }
}

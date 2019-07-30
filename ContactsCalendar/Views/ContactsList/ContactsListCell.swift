//
//  ContactsListCell.swift
//  ContactsCalendar
//
//  Created by Gabriel Henrique on 24/07/19.
//  Copyright © 2019 Gabriel Henrique. All rights reserved.
//

import UIKit

class ContactsListCell: UITableViewCell {
    static let identifier: String = "ContactsListCell"
    static let estimatedCellHeight: CGFloat = 130
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let contactImage: UIImageView = {
        let imageView = UIImageView()
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = UIColor(white: 0.4, alpha: 0.4)
        imageView.layer.cornerRadius = 30
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.lightGray.cgColor
        
        return imageView
    }()
    
    let contactName: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "John Doe"
        label.textColor = .lightGray
        label.font = UIFont.boldSystemFont(ofSize: 16)
        
        return label
    }()
    
    let contactPhoneNumber: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "(11) 991-992-993"
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 12)
        
        return label
    }()
}

extension ContactsListCell: ViewCode {
    func setup() {
        setupComponents()
        setupConstraints()
        setupExtraConfiguration()
    }
    
    func setupComponents() {
        contentView.addSubview(contactImage)
        contentView.addSubview(contactName)
        contentView.addSubview(contactPhoneNumber)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            contactImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            contactImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            contactImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16),
            contactImage.heightAnchor.constraint(equalToConstant: 60),
            contactImage.widthAnchor.constraint(equalToConstant: 60)
        ])
        
        NSLayoutConstraint.activate([
            contactName.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            contactName.leadingAnchor.constraint(equalTo: contactImage.trailingAnchor, constant: 16),
            contactName.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            contactName.heightAnchor.constraint(equalToConstant: 24)
        ])
        
        NSLayoutConstraint.activate([
            contactPhoneNumber.topAnchor.constraint(equalTo: contactName.bottomAnchor, constant: 0),
            contactPhoneNumber.leadingAnchor.constraint(equalTo: contactName.leadingAnchor),
            contactPhoneNumber.trailingAnchor.constraint(equalTo: contactName.trailingAnchor),
            contactPhoneNumber.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    func setupExtraConfiguration() {
        self.backgroundColor = Constants.Colors.grayDark
        self.selectionStyle = .none
    }
}

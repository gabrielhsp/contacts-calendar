//
//  ContactDetail.swift
//  ContactsCalendar
//
//  Created by Gabriel Henrique on 25/07/19.
//  Copyright © 2019 Gabriel Henrique. All rights reserved.
//

import UIKit

protocol ContactDetailDelegate: class {
    func userHasBeenLoaded()
}

class ContactDetail: UIView {
    weak var delegate: ContactDetailDelegate?
    
    init(delegate: ContactDetailDelegate) {
        self.delegate = delegate
        super.init(frame: .zero)
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
        imageView.layer.cornerRadius = 60
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.lightGray.cgColor
        
        return imageView
    }()
    
    let contactName: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "John Doe"
        label.textColor = .lightGray
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.textAlignment = .center
        
        return label
    }()
    
    let contactPhone: UILabel = {
        let label = UILabel()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "(11) 991-992-993"
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: 14)
        label.textAlignment = .center
        
        return label
    }()
    
    let contactPhoneList: ContactDetailPhoneList = {
        let tableView = ContactDetailPhoneList()
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = Constants.Colors.grayDark
        tableView.isScrollEnabled = false
        tableView.separatorColor = UIColor(white: 0.4, alpha: 0.4)
        tableView.removeSpacing()
        
        return tableView
    }()
}

extension ContactDetail: ViewCode {
    func setup() {
        setupComponents()
        setupConstraints()
        setupExtraConfiguration()
    }
    
    func setupComponents() {
        addSubview(contactImage)
        addSubview(contactName)
        addSubview(contactPhone)
        addSubview(contactPhoneList)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            contactImage.heightAnchor.constraint(equalToConstant: 120),
            contactImage.widthAnchor.constraint(equalToConstant: 120),
            contactImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            contactImage.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor, constant: 0)
        ])
        
        NSLayoutConstraint.activate([
            contactName.topAnchor.constraint(equalTo: contactImage.bottomAnchor, constant: 16),
            contactName.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            contactName.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ])
        
        NSLayoutConstraint.activate([
            contactPhone.topAnchor.constraint(equalTo: contactName.bottomAnchor),
            contactPhone.leadingAnchor.constraint(equalTo: contactName.leadingAnchor),
            contactPhone.trailingAnchor.constraint(equalTo: contactName.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            contactPhoneList.topAnchor.constraint(equalTo: contactPhone.bottomAnchor, constant: 16),
            contactPhoneList.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            contactPhoneList.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            contactPhoneList.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    func setupExtraConfiguration() {
        layer.backgroundColor = Constants.Colors.grayDark.cgColor
    }
}

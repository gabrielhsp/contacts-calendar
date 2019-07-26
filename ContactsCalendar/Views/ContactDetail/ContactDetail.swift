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
}

extension ContactDetail: ViewCode {
    func setup() {
        setupComponents()
        setupConstraints()
        setupExtraConfiguration()
    }
    
    func setupComponents() {
        
    }
    
    func setupConstraints() {
        
    }
    
    func setupExtraConfiguration() {
        
    }
}

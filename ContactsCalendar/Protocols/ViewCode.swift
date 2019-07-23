//
//  ViewCode.swift
//  ContactsCalendar
//
//  Created by Gabriel Pereira on 23/07/19.
//  Copyright © 2019 Gabriel Pereira. All rights reserved.
//

import UIKit

protocol ViewCode: class {
    func setup()
    func setupComponents()
    func setupConstraints()
    func setupExtraConfiguration()
}

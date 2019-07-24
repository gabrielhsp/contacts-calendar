//
//  ViewCode.swift
//  ContactsCalendar
//
//  Created by Gabriel Henrique on 24/07/19.
//  Copyright © 2019 Gabriel Henrique. All rights reserved.
//

import Foundation

protocol ViewCode: class {
    func setup()
    func setupComponents()
    func setupConstraints()
    func setupExtraConfiguration()
}

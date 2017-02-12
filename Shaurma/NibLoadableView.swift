//
//  NibLoadableView.swift
//  Shaurma
//
//  Created by Dmytro Aprelenko on 12.02.17.
//  Copyright © 2017 Dmytro Aprelenko. All rights reserved.
//

import UIKit

protocol NibLoadableView: class {}

extension NibLoadableView where Self: UIView {
    static var nibName: String {
        return String(describing: self)
    }
}

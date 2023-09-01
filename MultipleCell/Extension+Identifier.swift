//
//  Extension+Identifier.swift
//  MultipleCell
//
//  Created by 권현석 on 2023/09/01.
//

import UIKit

extension UITableViewCell {
    
    static var identifier: String {
        return String(describing: self)
    }
}

//
//  CustomCellLAbel.swift
//  MultipleCell
//
//  Created by 권현석 on 2023/09/01.
//

import UIKit

class BaseLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        textAlignment = .left
        font = .systemFont(ofSize: 15, weight: .bold)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

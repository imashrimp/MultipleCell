//
//  BaseImageView.swift
//  MultipleCell
//
//  Created by 권현석 on 2023/09/01.
//

import UIKit

class BaseImageView: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentMode = .scaleAspectFit
        tintColor = .darkGray
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

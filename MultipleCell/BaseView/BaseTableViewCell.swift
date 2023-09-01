//
//  BaseTableViewCell.swift
//  MultipleCell
//
//  Created by 권현석 on 2023/09/01.
//

import UIKit
import SnapKit

class BaseTableViewCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        contentView.backgroundColor = .white
    }
    
    func setConstraints() {  }
}

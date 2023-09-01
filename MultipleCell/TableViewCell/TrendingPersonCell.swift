//
//  TrendingPersonCell.swift
//  MultipleCell
//
//  Created by 권현석 on 2023/09/01.
//

import UIKit

class TrendingPersonCell: BaseTableViewCell {
    
    let typeLabel = BaseLabel()
    let nameLabel = BaseLabel()
    let genderLabel = BaseLabel()
    let roleLabel = BaseLabel()
    let personImage = BaseImageView(frame: .zero)
    
    
    override func configure() {
        super.configure()
        [
        typeLabel,
        nameLabel,
        genderLabel,
        roleLabel,
        personImage
        ].forEach {
            contentView.addSubview($0)
        }
    }
    
    override func setConstraints() {
        typeLabel.snp.makeConstraints { make in
            make.top.leading.equalToSuperview().offset(8)
            make.trailing.greaterThanOrEqualTo(personImage.snp.leading).offset(-8)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.top.equalTo(typeLabel.snp.bottom).offset(6)
            make.leading.equalToSuperview().offset(8)
            make.trailing.greaterThanOrEqualTo(personImage.snp.leading).offset(-8)
        }
        
        genderLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(6)
            make.leading.equalToSuperview().offset(8)
            make.trailing.greaterThanOrEqualTo(personImage.snp.leading).offset(-8)
        }
        
        roleLabel.snp.makeConstraints { make in
            make.top.equalTo(genderLabel.snp.bottom).offset(8)
            make.leading.equalToSuperview().offset(8)
            make.trailing.greaterThanOrEqualTo(personImage.snp.leading).offset(-8)
            make.bottom.greaterThanOrEqualToSuperview().inset(8)
        }
        
        personImage.snp.makeConstraints { make in
            make.verticalEdges.equalToSuperview().inset(4)
            make.trailing.equalToSuperview().inset(8)
            make.width.equalTo(80)
        }
    }
}

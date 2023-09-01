//
//  TrendingTVCell.swift
//  MultipleCell
//
//  Created by 권현석 on 2023/09/01.
//

import UIKit

class TrendingTVCell: BaseTableViewCell {
    
    let typeLabel = BaseLabel()
    let posterImage = BaseImageView(frame: .zero)
    let nameLabel = BaseLabel()
    let releaseDateLabel = BaseLabel()
    
    override func configure() {
        super.configure()
        [
        typeLabel,
        posterImage,
        nameLabel,
        releaseDateLabel
        ].forEach {
            contentView.addSubview($0)
        }
    }
    
    override func setConstraints() {
        
        typeLabel.snp.makeConstraints { make in
            make.top.leading.equalToSuperview().offset(8)
        }
        
        posterImage.snp.makeConstraints { make in
            make.leading.greaterThanOrEqualTo(typeLabel.snp.trailing).offset(8)
            make.verticalEdges.equalToSuperview().inset(6)
            make.centerX.equalToSuperview()
            make.width.equalTo(80)
        }
        
        nameLabel.snp.makeConstraints { make in
            make.leading.equalTo(posterImage.snp.trailing).offset(6)
            make.top.equalToSuperview().offset(8)
            make.trailing.greaterThanOrEqualToSuperview().inset(8)
        }
        
        releaseDateLabel.snp.makeConstraints { make in
            make.leading.equalTo(posterImage.snp.trailing).offset(6)
            make.top.equalTo(nameLabel.snp.bottom).offset(6)
            make.trailing.bottom.greaterThanOrEqualToSuperview().inset(8)
        }
    }
}

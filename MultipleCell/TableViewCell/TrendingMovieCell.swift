//
//  TrendingMovieCell.swift
//  MultipleCell
//
//  Created by 권현석 on 2023/09/01.
//

import UIKit

class TrendingMovieCell: BaseTableViewCell {

    let posterImageView = BaseImageView(frame: .zero)
    let titleLabel = BaseLabel()
    let mediaTypeLabel = BaseLabel()
    let releaseDateLabel = BaseLabel()
    
    override func configure() {
        super.configure()
        [
        posterImageView,
        titleLabel,
        mediaTypeLabel,
        releaseDateLabel
        ].forEach {
            contentView.addSubview($0)
        }
    }
    
    override func setConstraints() {
        posterImageView.snp.makeConstraints { make in
            make.verticalEdges.leading.equalToSuperview().inset(6)
            make.width.equalTo(80)
        }
        
        mediaTypeLabel.snp.makeConstraints { make in
            make.leading.top.equalTo(posterImageView.snp.trailing).offset(8)
            make.trailing.greaterThanOrEqualToSuperview().inset(8)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(mediaTypeLabel.snp.bottom).offset(6)
            make.leading.equalTo(mediaTypeLabel.snp.leading)
            make.trailing.greaterThanOrEqualToSuperview().inset(8)
        }
        
        releaseDateLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(6)
            make.leading.equalTo(mediaTypeLabel.snp.leading)
            make.trailing.bottom.greaterThanOrEqualToSuperview().inset(8)
        }
    }
}

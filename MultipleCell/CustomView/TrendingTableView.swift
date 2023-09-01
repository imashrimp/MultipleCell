//
//  TrendingTableView.swift
//  MultipleCell
//
//  Created by 권현석 on 2023/09/01.
//

import UIKit
import SnapKit

class TrendingView: UIView {
    
    var trendingDataList: TrendingModel?

    lazy var tableView = {
        let view = UITableView()
        view.register(TrendingTVCell.self, forCellReuseIdentifier: TrendingTVCell.identifier)
        view.register(TrendingMovieCell.self, forCellReuseIdentifier: TrendingMovieCell.identifier)
        view.register(TrendingPersonCell.self, forCellReuseIdentifier: TrendingPersonCell.identifier)
        view.delegate = self
        view.dataSource = self
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        addSubview(tableView)
        tableView.rowHeight = 120
        APIManager.shared.callRequest { data in
            self.trendingDataList = data
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        
    }
    
    func setConstraints() {
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

extension TrendingView: UITableViewDelegate {
    
}

extension TrendingView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trendingDataList?.results.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let data = trendingDataList else { return UITableViewCell() }
        let item = data.results[indexPath.row]
        let type = item.media_type
        
        switch type {
        case "movie":
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TrendingMovieCell.identifier) as? TrendingMovieCell else { return UITableViewCell()}
            cell.mediaTypeLabel.text = item.media_type
            cell.titleLabel.text = item.title
//            cell.releaseDateLabel.text = item.release_date
//            cell.posterImageView.image =
            return cell
        case "tv":
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TrendingTVCell.identifier) as? TrendingTVCell else { return UITableViewCell()}
            cell.nameLabel.text = item.name
//            cell.releaseDateLabel.text = item.release_date
            cell.typeLabel.text = item.media_type
//            cell.posterImage.image =
            return cell
        case "person":
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TrendingPersonCell.identifier) as? TrendingPersonCell else { return UITableViewCell()}
            
            cell.nameLabel.text = item.name
            cell.genderLabel.text = "\(item.gender)" //이거 성별처럼 bool 타입 값 들어오면 바꾸는거 수업시간에 했음. 찾아보자
            cell.roleLabel.text = item.known_for_department
            cell.typeLabel.text = item.media_type
//            cell.personImage.image
            
            return cell

        default:
            return UITableViewCell()
        }
        
        
    }
}

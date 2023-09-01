//
//  TrendingTableView.swift
//  MultipleCell
//
//  Created by 권현석 on 2023/09/01.
//

import UIKit
import SnapKit

class TrendingView: UIView {

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
        addSubview(tableView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure() {
        
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
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}

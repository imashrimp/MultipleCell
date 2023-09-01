//
//  ViewController.swift
//  MultipleCell
//
//  Created by 권현석 on 2023/09/01.
//

import UIKit

class ViewController: UIViewController {

    
    let tableView = TrendingView()
    
    override func loadView() {
        self.view = tableView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


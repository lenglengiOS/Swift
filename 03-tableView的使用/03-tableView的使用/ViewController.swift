//
//  ViewController.swift
//  03-tableView的使用
//
//  Created by 冷洪林 on 2017/5/31.
//  Copyright © 2017年 冷洪林. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK:- 懒加载的属性
    lazy var tableView = UITableView()

    // MARK:- 系统回调函数
    override func viewDidLoad() {
        super.viewDidLoad()
        creatUI()
    }
}

// MARK:- 设置UI界面
extension ViewController {
    func creatUI() {
        view.addSubview(tableView)
        tableView.frame = view.bounds
        tableView.dataSource = self
        tableView.delegate = self
    }
}

// MARK:- tableView的数据源和代理方法
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let CellID = "CellID"
        var cell = tableView.dequeueReusableCell(withIdentifier: CellID)
        if cell == nil {
            cell = UITableViewCell.init(style: .default, reuseIdentifier: CellID)
        }
        cell?.textLabel?.text = "测试cell: \(indexPath.row)"
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("点击了cell : \(indexPath.row)")
    }
}




















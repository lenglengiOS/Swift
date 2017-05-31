//
//  ViewController.swift
//  02-闭包的使用
//
//  Created by 冷洪林 on 2017/5/31.
//  Copyright © 2017年 冷洪林. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tool = HttpTools();
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // 尾随闭包写法一:
        tool.loadData { (jsonData) in
            weak var weakself = self
            print("在ViewController中获得jsonData: \(jsonData)")
            weakself?.view.backgroundColor = UIColor.red
        }
        // 尾随闭包写法二:
        tool.loadData (callBack: { (jsonData) in
            weak var weakself = self
            print("在ViewController中获得jsonData: \(jsonData)")
            weakself?.view.backgroundColor = UIColor.red
        })
        // 尾随闭包写法三:
        tool.loadData { (jsonData) in
            weak var weakself = self
            print("在ViewController中获得jsonData: \(jsonData)")
            weakself?.view.backgroundColor = UIColor.red
        }
    }

}


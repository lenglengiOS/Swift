//
//  HttpTools.swift
//  02-闭包的使用
//
//  Created by 冷洪林 on 2017/5/31.
//  Copyright © 2017年 冷洪林. All rights reserved.
//

import UIKit

class HttpTools: NSObject {
    func loadData(callBack : @escaping (_ jsonData : String) -> ()){
        //全局队列异步执行
        DispatchQueue.global().async {
            print("请求网络数据\(Thread.current)")
            //耗时操作
            DispatchQueue.main.async {
                //回到主线程
                print("网络数据请求成功\(Thread.current)")
                callBack("jsondata数据")
            }
        }
    }
}

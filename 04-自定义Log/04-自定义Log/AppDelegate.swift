//
//  AppDelegate.swift
//  04-自定义Log
//
//  Created by 冷洪林 on 2017/6/2.
//  Copyright © 2017年 冷洪林. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        LHLLog(123)
        LHLLog("冷洪林")
        return true
    }
}


func LHLLog<T>(_ message: T, file: String = #file, function: String = #function, line: Int = #line){
    #if DEBUG
    let fileName = (file as NSString).lastPathComponent
    
    print("\(fileName)(\(line))-\(message)")
    #endif
}



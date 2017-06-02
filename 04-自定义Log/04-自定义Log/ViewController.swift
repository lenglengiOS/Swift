//
//  ViewController.swift
//  04-自定义Log
//
//  Created by 冷洪林 on 2017/6/2.
//  Copyright © 2017年 冷洪林. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        LHLLog("lhl")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        LHLLog(123.2656)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}


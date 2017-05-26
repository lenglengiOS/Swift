//: Playground - noun: a place where people can play

import UIKit

// 1.常量&变量
// * 开发中尽量优先使用常量,这样可以避免后续开发中被修改，比较安全
// * 是指向的对象不可以修改,但是可以通过指针获得对象后修改对象内部的属性
_ = {
    let age : Int = 10
    let view : UIView = UIView()
    view.backgroundColor = UIColor.red
    view.frame = CGRect.init(x: 0, y: 0, width: 10, height: 10)
    view.alpha = 0.2
    view.isHidden = false
}

// 2.类型推导
// * Swift是强类型语言
// * Swift中任何一个标识符都有一个明确的类型
// * 定义一个标识符的时候直接进行赋值,则可以省略类型,该标识符的类型就是直接赋值的类型
_ = {
    let name : String = "冷洪林"
    let height = 168.235
    let view = UIView()
    let btn = UIButton()
    let m : Int
    m = 10
}

// 3.基本运算
// * Swift在进行基本运算时必须保证类型一致,否则会出错,因为Swift中没有隐式转换
_ = {
    let m = 20
    let n = 30.45
    let result = Double(m) + n // 必须强制类型转换才可以计算!
}

// 4.逻辑分支
_ = {
    // * 1>.Swift中if的写法:
    // * if后面的()可以省略
    // * 判断句不再有非0/nil即真,判断句必须有明确的真假(Bool-->true/false)
    let a = 10
    if a > 0 {
        print("a大于0")
    }else{
        print("a小于0")
    }
    // * 2>.Swift中else if的写法
    // * 与if写法一致
    let score = 85
    if score < 0 || score > 100{
        print("非法的程序")
    }else if score < 60 {
        print("不及格")
    }else if score < 80 {
        print("及格")
    }else if score <= 100 {
        print("牛逼")
    }
    // * 3>.三目运算符
    let m = 10, n = 15
    let result = m > n ? m : n
    // * 4>.guard运算
    let age = 20
    let money = 0
    let IDCard = true
    func onLine (age : Int, money : Int, IDCard: Bool) {
        guard age > 18 else {
            print("未成年禁止上网")
            return
        }
        guard money >= 0 else {
            print("没有钱禁止上网")
            return
        }
        guard IDCard else {
            print("没有身份证禁止上网")
            return
        }
        print("开卡上网")
    }
    
    onLine(age: age, money: money, IDCard: IDCard)
    // * 4>.switch运算
    // ...
}

// 5.字符串
// 1>.定义字符串
let str : String = "+"
let str1 = "冷洪林"
// 2>.遍历字符串
for name in str1.characters {
    print(name)
}
// 3>.字符串拼接
let str2 = "lhl"
let str3 = "lyx"
let str4 = str3 + str2

let str5 = "lhl"
let age = 20
let height = 1.88
let info = "\(str5)的年龄是\(age), 身高是\(height)"

let min = 2
let second = 18
let timeStr = String(Formatter )






























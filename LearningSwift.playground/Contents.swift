//: Playground - noun: a place where people can play

import UIKit
import Foundation

// 1.常量&变量
_ = {
    // * 开发中尽量优先使用常量,这样可以避免后续开发中被修改，比较安全
    // * 是指向的对象不可以修改,但是可以通过指针获得对象后修改对象内部的属性
    let age : Int = 10
    let view : UIView = UIView()
    view.backgroundColor = UIColor.red
    view.frame = CGRect.init(x: 0, y: 0, width: 10, height: 10)
    view.alpha = 0.2
    view.isHidden = false
}

// 2.类型推导
_ = {
    // * Swift是强类型语言
    // * Swift中任何一个标识符都有一个明确的类型
    // * 定义一个标识符的时候直接进行赋值,则可以省略类型,该标识符的类型就是直接赋值的类型
    let name : String = "冷洪林"
    let height = 168.235
    let view = UIView()
    let btn = UIButton()
    let m : Int
    m = 10
}

// 3.基本运算
_ = {
    // * Swift在进行基本运算时必须保证类型一致,否则会出错,因为Swift中没有隐式转换
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
_ = {
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
    let second = 1
    String(format: "%02d:%02d", arguments:[min, second])
    
    // 4>.字符串截取
    let urlStr = "www.baidu.com"
    let index = urlStr.index(urlStr.endIndex, offsetBy: -3)
    let newStr = urlStr.substring(from: index)
}

// 6.数组
_ = {
    // 1>.定义数组
    let array = ["lhgl","fe","g","drg"]
    var arrayM = Array<String>()
    let arrayN = [String]()
    // 2>.对可变数组的基本操作
    arrayM.append("aaa")
    arrayM.append("bbb")
    arrayM.append("ccc")
    arrayM.append("ddd")
    
    arrayM.remove(at: 0)
    arrayM
    
    arrayM[0] = "lhl"
    arrayM
    
    arrayM[1]
    
    for i in 0..<arrayM.count {
        print(arrayM[i])
    }
    for name in arrayM {
        print(name)
    }
    for i in 0..<2 {
        print(arrayM[i])
    }
    for name in arrayM[0..<2] {
        print(name)
    }
    
    let resultArr = arrayM + array // 相同类型的数组才能相加
}

// 7.字典
_ = {
    var dict = ["name" : "冷洪林", "age" : "18"] as [String : Any]
    var dicr1 = ["name" : "冷洪林", "age" : 18, "hieght" : 1.88] as [String : Any]
    let dict2 = Dictionary<String, NSObject>()
    var dict3 = [String : NSObject]()
    var dictM = [String : AnyObject]()
    
    dictM["name"] = "冷洪林" as AnyObject?
    dictM["name"] = "lhl" as AnyObject?
    dictM["age"] = 18 as AnyObject?
    dictM["height"] = 1.88 as AnyObject?
    dictM
    dictM.removeValue(forKey: "name")
    dictM
    
    dictM["age"]
    
    for key in dictM.keys {
        print(key)
    }
    for value in dictM.values {
        print(value)
    }
    for (key, value) in dictM {
        print(key)
        print(value)
    }
    for (key, value) in dicr1 {
        dict[key] = value
    }
    dict
}

// 8.元组
_ = {
    // * 一般用于作为方法的返回值
    let info = ("lhl", 1.88, 18)
    info.0
    info.1
    let info1 = (name : "冷洪林", age : 18, height : 188)
    info1.name
    info1.age
    info1.height
    info1.0
    info1.1
    info1.2
    let (name, age, height) = ("why", 18, 1.88)
    name
    age
    height
}

// 9.可选类型
// * swift中规定:对象中的任何属性在创建时都必须有明确的初始化值
class Student : NSObject {

}
// 1>.定义可选类型
var name : Optional<String> = nil
var name1 : String? = nil
// 2>.给可选类型赋值
name1 = "lhl"
// 3>.取出可选类型中的值
// 4>.注意: 可选类型 + ! 就是强制解包
print(name1!)
// 5>.注意:强制解包是非常危险的,如果可选类型为nil,强制解包系统会崩溃,所以解包之前应该先判断可选类型是否为nil
if name1 != nil {
    print(name1!)
}
// 6>.可选绑定
if let tempName = name1 {
    print(tempName)
    print(tempName)
    print(tempName)
    print(tempName)
    print(tempName)
}
if let name1 = name1 {
    print(name1)
    print(name1)
    print(name1)
    print(name1)
    print(name1)
}







































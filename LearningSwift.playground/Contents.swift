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
_ = {
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
    // 7>.应用场景
    let url : NSURL? = NSURL(string: "www.baidu.com")
    if let url = url {
        let reuqest = NSURLRequest(url: url as URL)
    }
}

// 10.函数
_ = {
    // 1>.没有参数没有返回值
    func about() -> Void {
        print("关于...")
    }
    about()
    func about1() {
        print("iohne8")
    }
    about1()
    // 2>.有参数没有返回值
    func callPhone(PhoneNum: String) {
        print("打电话给"+PhoneNum)
    }
    callPhone(PhoneNum: "15680222613")
    // 3>.没有参数有返回值
    func hello() -> String {
        return "你吃饭了嘛?"
    }
    let H = hello()
    print(H)
    // 4>.有参数有返回值
    func sum(num1:Int, num2:Int) -> Int {
        return num1 + num2
    }
    sum(num1: 10, num2: 20)
    // 5>.函数的使用注意
    // 注意一:内部参数和外部参数
    // 注意二:默认参数
    func makeCoffee(coffeeName: String = "雀巢") -> String {
        return "我想要喝一杯\(coffeeName)咖啡"
    }
    makeCoffee(coffeeName: "猫屎")
    makeCoffee(coffeeName: "拿铁")
    makeCoffee()
    // 注意三:可变参数,参数的个数可变
    func addNum(nums:Int...) -> Int {
        var result = 0
        for n in nums {
            result += n
        }
        return result
    }
    addNum(nums: 10, 20, 35)
    // 注意四:指针类型
    var m = 20
    var n = 30
    func swamp( m: inout Int, n: inout Int) {
        let temp = m
        m = n
        n = temp
    }
    swamp(m: &m, n: &n)
    print(m)
    print(n)
    // 注意五:函数的嵌套使用(了解)
}

// 11.类的使用
_ = {
    // 1>.类的属性:存储属性,计算属性,类属性
    class Person {
        // 存储属性
        var age = 20.0
        var age1 = 340.0
        
        // 计算属性
        var averageAge : Double {
            return (age + age1) * 0.5
        }
        
        // 类属性
        static var legs : Int = 0
    }
    let p = Person()
    p.age
    p.age1
    p.averageAge
    Person.legs = 2
    // 2>.类的构造函数
    class Job : NSObject {
        var name : String?
        var age = 0
        override init(){
            // 在构造函数中,如果没有明确super.init,那么系统会自动调用super.init()
            // super.init()
            print("------")
        }
        
        // 自定义构造函数
        init(name : String, age : Int) {
            self.name = name
            self.age = age
        }
        
        init(dict: [String : AnyObject]) {
            super.init()
            setValuesForKeys(dict)
        }
        
        override func setValue(_ value: Any?, forUndefinedKey key: String) {
            
        }
    }
    
    let J = Job()
    let J1 = Job()
    let J2 = Job()
    let J3 = Job(name: "冷洪林", age: 10)
    J3.name
    J3.age
    let J4 = Job(dict: ["name": "lhl" as AnyObject, "age": 10 as AnyObject, "heigt": 1.88 as AnyObject])
    print(J4.age)
    if let name = J4.name {
        print(name)
    }
    // 3>.类的属性监听器
    class Cell : NSObject {
        var name : String? {
            // 属性即将改变的时候进行监听
            willSet{
                if let newValue = newValue {
                    print("属性即将改变,新值为:\(newValue)")
                }
            }
            // 属性已经改变时进行监听
            didSet{
                if let oldValue = oldValue {
                    print("属性已经改变,旧值为:\(oldValue)")
                }
            }
        }
    }
    
    var cell = Cell()
    cell.name = "lhl"
    cell.name = "冷洪林"
}

// 12.闭包
_ = {
    // 1>.block的使用(代码见"./01-block")
    // 2>.闭包的使用(代码见"./02-闭包的使用")
    // 3>.尾随闭包:如果闭包作为方法的最后一个参数,那么闭包可以将()省略掉
}

// 13.懒加载
_ = {
    //初始化并且分配空间，会提前创建
    //移动开发，延迟加载，减少内存消耗，就是懒加载
    //懒加载 - lazy
    /**
     1.能够延迟创建
     2.能够解除解包的烦恼（最大的好处）
     */
    
    //懒加载简单写法
    // lazy var label : UIView = UIView();
    //懒加载完整写法，实际是一个闭包，日常开发不建议这么写
    /**
     1. {} 包装代码
     2. () 执行代码
     
     日常开发：
     1.闭包中智能提示不灵敏
     2.出现self.还需要注意循环引用
     */
    //    lazy var label = { () -> DemoLabel in
    //        var l = DemoLabel();
    //
    //        //设置label的属性....
    //
    //        return l;
    //    }()
}








































//
//  ViewController.swift
//  7.字典
//
//  Created by xiaoshayu on 2019/2/23.
//  Copyright © 2019年 piyingke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        demo()
    }
    
    func demo(){
        // 1.初始化一个空字典
        var dict1 = [String:AnyObject]()
        // 2.字典的定义 OC @{} Swift中同样使用 []
        let dict2  = ["name":"小鲨鱼","age":18] as [String : Any]
        print(dict2) // ["name": "小鲨鱼", "age": 18]
        // 3.字典的添加元素 (有则更新键值对，没有则添加)
        var dict3 = ["许嵩":"清明雨上","周杰伦":"告白气球","邓紫棋":"光年之外"] as [String:Any]
        dict3["张靓颖"] = "我的梦"
        print(dict3)
        // ["张靓颖": "我的梦", "许嵩": "清明雨上", "周杰伦": "告白气球", "邓紫棋": "光年之外"]
        dict3["许嵩"] = "有何不可"
        print(dict3)
        // ["张靓颖": "我的梦", "许嵩": "有何不可", "周杰伦": "告白气球", "邓紫棋": "光年之外"]
        // 4.字典元素的修改
        dict3.updateValue("倒数", forKey: "邓紫棋")
        // ["张靓颖": "我的梦", "许嵩": "有何不可", "周杰伦": "告白气球", "邓紫棋": "倒数"]
        print(dict3)
        // 5.字典元素的删除
        // a>通过dict3[key] = nil 的方式删除
        dict3["邓紫棋"] = nil
        print(dict3)
        // ["张靓颖": "我的梦", "许嵩": "有何不可", "周杰伦": "告白气球"]
        // b>通过.removeValue的方式删除
        dict3.removeValue(forKey: "张靓颖")
        print(dict3)
        // ["许嵩": "有何不可", "周杰伦": "告白气球"]
        print("字典的遍历 --- ")
        // 6.字典的遍历
        // a>
        for e in dict3{
            print(e)
        }
        //(key: "许嵩", value: "有何不可")
        //(key: "周杰伦", value: "告白气球")
        // b>
        for (key,value) in dict3{
            print("\(key) \(value)")
        }
        // 许嵩 有何不可
        // 周杰伦 告白气球
        print("字典的合并 ---")
        // 7.字典的合并
        let dict4 = ["田馥甄":"小幸运"] as [String:Any]
        // 将dict4合并到dict3中
        for (key,value) in dict4{
            dict3[key] = value
        }
        print(dict3)
        // ["许嵩": "有何不可", "周杰伦": "告白气球", "田馥甄": "小幸运"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


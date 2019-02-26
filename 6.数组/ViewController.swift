//
//  ViewController.swift
//  6.数组
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
        // 1.数组的定义 和 初始化 OC @[] Swift []
        // OC 可变数组 NSMutableArray 不可变 NSArray
        // Swift 可变数组 var 不可变 let
        var array1 = ["Jan","Feb","Mar","Apr","May","Jun"]
        print(array1)
        // 初始化 [类型]()
        var array2 = [String]()
        array2.append("a")
        print(array2)
        // 2.基本数据类型不需要包装 OC @[@(1),@(2)]
        let array3 = [1,2,3,4,5]
        print(array3)
        // 3.数组的遍历
        // a>按照下标遍历
        for i in 0..<array1.count{
            print(array1[i])
        }
        print("for in 遍历")
        // b>for in 遍历
        for i in array1 {
            print(i)
        }
        print("enum 遍历")
        // c>enum 遍历 同时遍历下标和内容
        for e in array1.enumerated() {
            print("\(e.offset) \(e.element)")
        }
        print("enum 遍历2")
        // d>enum 遍历 同时遍历下标和内容
        for (index,value) in array1.enumerated() {
            print("\(index) \(value)")
        }
        print("反序遍历")
        // e>反序遍历
        for e in array1.reversed(){
            print(e)
        }
        // 4.数组添加元素 .append
        array2.append("b")
        array2.append("c")
        print(array2) // ["a", "b", "c"]
        // 5.数组修改元素
        array2[1] = "d"
        print(array2) // ["a", "d", "c"]
        // 6.数组删除元素 .remove
        array2.remove(at: 2)
        print(array2) // ["a", "d"]
        // 7.数组的合并 保证两个数组类型一致
        array1 += array2
        // ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "a", "d"]
        print(array1)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


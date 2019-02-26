//
//  ViewController.swift
//  3.逻辑分支
//
//  Created by xiaoshayu on 2019/2/23.
//  Copyright © 2019年 piyingke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        demo3()
    }

    func demo() {
        let a = 5
        let b = 10
        // 1.条件语句可以省略(),但是必须加上{}
        if a > b {
            print("a > b")
        }else{
            print("a < b")
        }
        // 2.三目的写法与OC基本一致
        a > b ?print("a > b"):print("a < b")
        
        // 3. ?? 是一个简单的三目，如果有值，就使用值，如果没值，就使用 ?? 后面的值
        let c :Int? = nil
        print(Int(b) + (c ?? 0))
    }
    
    func demo1(){
        // 1.if let
        let oname:String? = "xiaoshayu"
        let oage:Int? = 18
        // 如果{}中没有使用，可以用_代替
        if let _ = oname,
            let _ = oage{
            print(oname! + oage!.description)
        }
        
        // 2.if var
        if var name = oname,
            var age = oage{
            name = "jack"
            age = 20
            print(name + age.description)
        }
    }
    
    func demo2(){
        // 1.guard let 保证变量／常量一定有值，没有值则返回。
        let oname:String? = "xiaoshayu"
        let oage:Int? = nil//18
        guard let name = oname,
           let age = oage else{
                print("oname or oage is nil")
                return
        }
        // 2.程序运行到此，name和age一定有值
        print(name + age.description)
    }
    
    func demo3(){
        // switch
        // 1.可以针对任意类型的值进行分支，不再局限于整型（OC为整型）。
        // 2.不需要添加break,如果需要多值，用`,`隔开。
        // 3.每一个分支至少需要一条指令
        // 4.在分支中定义变量／常量时不需要加{}
        let num = "June"//"January"
        switch num {
        case "January":
            let a = 31
            print("一月" + a.description + "天")
        case "February":
            print("二月")
        case "March":
            print("三月")
        case "April","May","June":
            print("第二季度")
        default:
            print("none")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


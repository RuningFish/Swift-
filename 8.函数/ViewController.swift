//
//  ViewController.swift
//  8.函数
//
//  Created by xiaoshayu on 2019/2/24.
//  Copyright © 2019年 piyingke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(sum1(x:5,y:3))
        print(sum2(num1: 5, num2: 5))
        print(sum3(6, 6))
        print(sum4())
    }

    // 1.函数的定义格式: 函数名（形参列表）->  返回值类型
    func sum1(x:Int, y:Int) -> Int{
        return x + y
    }
    // 2.外部参数：就是在形参前面加一个名字
    // 外部参数不会影响函数内部的细节，看起来更加直观
    // 外部参数如果使用 _ ,在外部调用函数时会省略形参的名字
    func sum2(num1 x:Int, num2 y:Int) -> Int{
        return x + y
    }
    func sum3(_ x:Int, _ y:Int) -> Int{
        return x + y
    }
    // 3.函数的默认值
    // 通过给参数设置默认值，在调用的时候，如果不设定值的，使用默认值。
    func sum4(x:Int = 11, y:Int = 22) -> Int{
        return x + y
    }
    // 4.函数无返回值的三种写法
    // a. func demo(){}
    // b. func demo() -> (){}
    // c. func demo() -> void{}
    
    func sum(x:Int?, y:Int?) -> Int{
        guard let _ = x,let _ = y else{
            print("x or y is nil")
            return (x ?? 0) + (y ?? 0)
        }
        return x! + y!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


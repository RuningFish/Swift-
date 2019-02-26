//
//  ViewController.swift
//  1.常量和变量
//
//  Created by xiaoshayu on 2019/2/23.
//  Copyright © 2019年 piyingke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo()
    }
    
    func demo () {
        let x = 5
        let y = 10.5
        var z = 15
        z = 20
        // 1.自动推导 常量／变量的类型会根据右侧代码的执行结果，推导对应的类型
        print(x,y,z)
        
        // 2.不同类型之间不能直接进行计算，需要作转换
//        let a = 10
//        let b = 0.5
//        print(a + Int(b))
        let a :Double = 10
        let b = 0.5
        print(a + b)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


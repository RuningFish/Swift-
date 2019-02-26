//
//  ViewController.swift
//  2.可选项
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
    
    func demo() {
        // 1.定义可选项用 `Optional` 或者 `?`
        let x:Optional = 10
        let y:Int? = 20
        print(x)
        print(y)
        
        // 2.可选项参与计算的时候需要解包，使用 `!` 解包，从可选值中取出对应的非空值
        print(x! + y!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


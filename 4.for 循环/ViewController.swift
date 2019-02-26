//
//  ViewController.swift
//  4.for 循环
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
        // 0..<5,表示从0开始到5之间（不包含5）的数[0,5)
        // 0...5,表示从0开始到5之间（包含5）的数[0,5]
        for i in 0..<5 {
            print(i)
        }
        print("-----")
        for i in 0...5{
            print(i)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


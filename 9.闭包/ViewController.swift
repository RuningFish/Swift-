//
//  ViewController.swift
//  9.闭包
//
//  Created by xiaoshayu on 2019/2/24.
//  Copyright © 2019年 piyingke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // 闭包 格式：{(形参列表) -> 返回值类型 in 实现代码}
        // 1.有参数有返回值的闭包
        let a = { (x: Int ,y: Int) -> Int in
            return x + y
        }
        print(a(5,5)) // 10
        // 2.有参数无返回值的闭包
        let b = {(x:Int?) -> () in
            print((x ?? 0))
        }
        b(100)
        // 3.无参数无返回值的闭包
        let c = {() -> () in
            print("无参数无返回值的闭包")
        }
        c()
        // 其中 ()->() in 可以省略 简写成 let c = { print("...")}
        
        loadData { (result:[String:Any]) in
            print(result)
        }
    }
    
    func loadData(completion:@escaping (_ result:[String:Any])->()) -> (){
        DispatchQueue.global().async {
            Thread.sleep(forTimeInterval: 2.0)
            let json = ["许嵩":"有何不可","周杰伦":"告白气球","张靓颖":"我的梦"] as [String:Any]
            DispatchQueue.main.async {
                print("回到主线程")
                completion(json)
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


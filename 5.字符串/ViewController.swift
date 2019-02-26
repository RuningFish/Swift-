//
//  ViewController.swift
//  5.字符串
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
        let str = "床前明月光"
        // 1.字节数
        // 每个汉字事3个字节
        print(str.lengthOfBytes(using: .utf8))// 15
        // 2.字符串的长度
        print(str.characters.count)// 5
        // 3. String转化NSString，通过.length获取长度
        let ocString = str as NSString
        print(ocString.length)
        // 4.字符串的遍历
        for c in str.characters{
            print(c)
        }
        // 5. 字符串的拼接 \(常量／变量)
        let a = "疑是"
        let b = "地上霜"
        let c = "\(a)\(b)\(20)"
        print(c)
        // 6. 字符串的格式化
        let date = String(format:"%@年%@月%@日 %@:%@:%@", arguments:["2019","02","23","18","33","56"])
        print(date)
        print("字符串的截取---")
        // 7.字符串的截取
        let str2:String = "举头望明月，低头思故乡。"
        let subStr1 = str2.prefix(3) // 举头望
        let subStr2 = str2.suffix(4) // 低头思故乡
        let index1 = str2.index(str2.startIndex, offsetBy: 2)
        let index2 = str2.index(str2.startIndex, offsetBy: 8)
        let subStr3 = str2[index1...index2]
        
        print(subStr1)
        print(subStr2)
        print(subStr3)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


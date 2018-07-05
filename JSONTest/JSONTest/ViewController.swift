//
//  ViewController.swift
//  JSONTest
//
//  Created by home on 2018/07/05.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit

struct JSONFeed {
    let list: [weather]
    let main: main
    let name: String
}

struct weather {
    let main: String
    let description: String
}

struct main {
    let temp: Int
    let pressure: Int
    let humidity: Int
}



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    "http://api.openweathermap.org/data/2.5/group?id=2128295,2111149,1850147,1856057,1860243,1853909,1862415,1859146,1863967,1856035&units=metric&appid=ecea42c72b75c53caefaa93002224dd6"


}


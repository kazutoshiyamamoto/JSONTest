//
//  ViewController.swift
//  JSONTest
//
//  Created by home on 2018/07/05.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit
import Alamofire

struct JSONFeed: Codable {
    let list: [test]?
}

struct test: Codable {
    let weather: [weather]
//    let main: main
    let name: String
}

struct weather: Codable {
    let main: String
    let description: String
}

//struct main: Codable {
//    let temp: Int
//    let pressure: Int
//    let humidity: Int
//}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        feed()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func feed() {
        Alamofire.request("http://api.openweathermap.org/data/2.5/group?id=2128295,2111149,1850147,1856057,1860243,1853909,1862415,1859146,1863967,1856035&units=metric&appid=ecea42c72b75c53caefaa93002224dd6").validate().responseJSON { response in
            guard let data = response.data else {
                return
            }
            let decoder = JSONDecoder()
            do {
                let feed: JSONFeed = try decoder.decode(JSONFeed.self, from: data)
                print(feed)
            } catch {
                print(error)
            }
        }
    }
}


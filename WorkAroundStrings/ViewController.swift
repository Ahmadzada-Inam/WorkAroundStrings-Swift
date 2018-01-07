//
//  ViewController.swift
//  WorkAroundStrings
//
//  Created by Inam Ahmad-zada on 2018-01-07.
//  Copyright © 2018 Inam Ahmad-zada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let string = "Toronto is very cold today"
        print(string.count)
        print(string[string.index(string.startIndex, offsetBy: 8)])
    }
}


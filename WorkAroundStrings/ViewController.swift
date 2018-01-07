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
        
        // Intro
        let string = "Toronto is very cold today"
        print(string.count)
        print(string[string.index(string.startIndex, offsetBy: 8)])
        
        //String to data and vice versa
        let ellipsis: UInt16 = 0x2026
        let theString = String(format: "\(string)%C", arguments: [ellipsis])
        let asciiData = theString.data(using: .ascii, allowLossyConversion: true)
        if let data = asciiData {
            let asciiString = String(data: data, encoding: .ascii)!
            print("Original: \(theString), \(theString.count)")
            print("Modified: \(asciiString), \(asciiString.count)")
        }
    }
}


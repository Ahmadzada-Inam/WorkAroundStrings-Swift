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
        
        //Extracting
        let numberString = "012345678910"
        let firstFourIndex = numberString.index(numberString.startIndex, offsetBy: 4)
        let allButFirstThreeIndex = numberString.index(numberString.startIndex, offsetBy: 3)
        let secondIndex = numberString.index(numberString.startIndex, offsetBy: 2)
        let thirdToLastIndex = numberString.index(numberString.endIndex, offsetBy: -3)
        print(numberString[..<firstFourIndex])
        print(numberString[allButFirstThreeIndex...])
        print(numberString[secondIndex..<thirdToLastIndex])
    }
}


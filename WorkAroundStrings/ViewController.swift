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
        
        // Sorting
        let array: NSArray = ["str 1", "str 21", "str 12", "str 11", "str 02"]
        let sortedArray = array.sortedArray { (s1, s2) -> ComparisonResult in
            
            let s1 = s1 as! String
            let s2 = s2 as! String
            let comparisonOptions = String.CompareOptions.caseInsensitive.union(.numeric).union(.widthInsensitive).union(.forcedOrdering)
            let nsrange = NSMakeRange(0, s1.count)
            let range = Range(nsrange, in: s1)
            return s1.compare(s2, options: comparisonOptions, range: range, locale: nil)
        }
        print(array as! [Any])
        print(sortedArray)
    }
}


//
//  Sample.swift
//  Pattern 2
//
//  Created by Arben Pnishi on 1/22/17.
//  Copyright © 2017 Arben Pnishi. All rights reserved.
//

import UIKit

class Sample: NSObject {
    override init(){}
    
    var features: [Float] = [Float]()
    var corresponds: [Sample] = [Sample]()
    
    var distances: [Float] = [Float]()
    
    var correspondsToCentroid: Int = 0
    
    init(text: String) {
        self.features.removeAll()
        
        let array = text.components(separatedBy: " ")
        for item in array {
            if let number = Float(item) {
                self.features.append(number)
            }
        }
    }
}

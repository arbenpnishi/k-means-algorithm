//
//  Cluster.swift
//  Pattern 2
//
//  Created by Arben Pnishi on 1/22/17.
//  Copyright © 2017 Arben Pnishi. All rights reserved.
//

import UIKit
import Foundation

class Cluster: NSObject {
    override init(){}
    
    var instances: [Sample] = [Sample]()
        
    init(text: String) {
        self.instances.removeAll()
        let array = text.components(separatedBy: "\n")
        for item in array {
            let sample = Sample.init(text: item)
            self.instances.append(sample)
        }
        self.instances.removeLast()
    }
}

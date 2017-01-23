//
//  ViewController.swift
//  Pattern 2
//
//  Created by Arben Pnishi on 1/22/17.
//  Copyright © 2017 Arben Pnishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    let manager: Manager = Manager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
        let btn = sender as! UIButton
        manager.calculationType = CalculationType(rawValue: btn.tag)!
        manager.useKMeansAlgorithm()
        
        printValues()
    }
    
    func printValues(){
        var str: String = getTitleFromCalculation(type: manager.calculationType)
        
        for i in 0 ..< manager.categories.count {
            let item = manager.categories[i]
            str = str + "Cluster \(i) contains \(item) instances" + "\n"
        }
        textView.text = str
    }
    
    func getTitleFromCalculation(type: CalculationType) -> String{
        var str: String = ""
        switch type {
        case .euclidean:
            str = "EUCLIDEAN"
            
        case .manhattan:
            str = "MANHATTAN"

        case .euclideanSquared:
            str = "EUCLIDEAN SQUARED"

        case .chebychev:
            str = "CHEBYCHEV"
        }
        return "\n" + str + "\n\n"
    }
}

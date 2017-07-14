//
//  ViewController.swift
//  Calculator
//
//  Created by Виктор on 13.07.17.
//  Copyright © 2017 Виктор. All rights reserved.
//

import UIKit

var numbers = [Double]()
var operations = [String]()
var equal: Double = 1

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }

    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }
    
    
    @IBOutlet weak var textLabel: UILabel!
    
    
    @IBAction func number(_ sender: UIButton) {
        
        addNumbers(sender, textLabel)
        
    }
    
    
    @IBAction func clear(_ sender: UIButton) {
        
        textLabel.text = ""
        
        numbers = []
        
        operations = []
        
    }
    
    
    @IBAction func operation(_ sender: UIButton) {
        
        performOperation(sender, textLabel)
        
    }
    
}


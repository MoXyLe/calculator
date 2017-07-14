//
//  Operations.swift
//  Calculator
//
//  Created by Виктор on 14.07.17.
//  Copyright © 2017 Виктор. All rights reserved.
//

import Foundation
import UIKit

func performOperation(_ sender: UIButton, _ textLabel: UILabel) {
    
    let label: String
    
    if let newLabel = sender.titleLabel?.text {
        
        label = newLabel
        
    } else {
        
        label = ""
        
    }
    
    switch label {
        
    case "" where sender.currentImage == UIImage(named: "Equal.png"):
        
        if numbers.count == 0 || operations.count == 0{
            
            break
            
        }
        
        if operations.count == 1 && operations[0] == "=" {
            
            break
            
        }
        
        if textLabel.text == nil || textLabel.text == "" {
            
            break
            
        }
        
        for i in 1...numbers.count {
            
            if i == 1 && operations.count > 1 {
                
                switch operations[i - 1] {
                    
                case "*": equal = numbers[i - 1]
                case "/": equal = numbers[i - 1]
                case "+": equal = numbers[i - 1]
                case "-": equal = numbers[i - 1]
                case "%": equal = numbers[i - 1]
                    
                default: break
                    
                }
                
            } else if i == 1 && operations.count == 1{
                
                switch operations[i - 1] {
                    
                case "*": equal = numbers[i - 1] * Double(textLabel.text!)!
                case "/": equal = numbers[i - 1] / Double(textLabel.text!)!
                case "+": equal = numbers[i - 1] + Double(textLabel.text!)!
                case "-": equal = numbers[i - 1] - Double(textLabel.text!)!
                case "%": equal = numbers[i - 1] / 100 * Double(textLabel.text!)!
                    
                default: break
                    
                }
                
            } else {
                
                switch operations[i - 2] {
                    
                case "*": equal *= numbers[i - 1]
                case "/": equal /= numbers[i - 1]
                case "+": equal += numbers[i - 1]
                case "-": equal -= numbers[i - 1]
                case "%": equal *= numbers[i - 1] / 100
                    
                default: break
                    
                }
                
            }
            
            if i == numbers.count && numbers.count > 1 {
                
                switch operations[i - 1] {
                    
                case "*": equal *= Double(textLabel.text!)!
                case "/": equal /= Double(textLabel.text!)!
                case "+": equal += Double(textLabel.text!)!
                case "-": equal -= Double(textLabel.text!)!
                case "%": equal *= Double(textLabel.text!)! / 100
                    
                default: break
                    
                }
                
            }
            
        }
        if String(equal).hasSuffix(".0") {
            
            let intEqual = Int(equal)
            textLabel.text = String(intEqual)
            
        } else {
            
            textLabel.text = String(equal)
            
        }
        
        numbers = []
        
        operations = ["="]
        
    case "" where sender.currentImage == UIImage(named: "Untitled.png"):
        
        if textLabel.text == nil || textLabel.text == "" {
            
            break
            
        }
        
        if operations.count != 0 && operations[0] == "="{
            
            operations = ["*"]
            
        } else {
            
            operations.append("*")
            
        }
        
        numbers.append(Double(textLabel.text!)!)
        
        textLabel.text = ""
        
    case "" where sender.currentImage == UIImage(named: "Деление.png"):
        
        if textLabel.text == nil || textLabel.text == "" {
            
            break
            
        }
        
        if operations.count != 0 && operations[0] == "="{
            
            operations = ["/"]
            
        } else {
            
            operations.append("/")
            
        }
        
        numbers.append(Double(textLabel.text!)!)
        
        textLabel.text = ""
        
    case "" where sender.currentImage == UIImage(named: "Krest.png"):
        
        if textLabel.text == nil || textLabel.text == "" {
            
            break
            
        }
        
        if operations.count != 0 && operations[0] == "="{
            
            operations = ["+"]
            
        } else {
            
            operations.append("+")
            
        }
        
        numbers.append(Double(textLabel.text!)!)
        
        textLabel.text = ""
        
    case "" where sender.currentImage == UIImage(named: "Line.png"):
        
        if textLabel.text == nil || textLabel.text == "" {
            
            break
            
        }
        
        if operations.count != 0 && operations[0] == "="{
            
            operations = ["-"]
            
        } else {
            
            operations.append("-")
            
        }
        
        numbers.append(Double(textLabel.text!)!)
        
        textLabel.text = ""
        
    case "" where sender.currentImage == UIImage(named: "Percent.png"):
        
        if textLabel.text == nil || textLabel.text == "" {
            
            break
            
        }
        
        if operations.count != 0 && operations[0] == "="{
            
            operations = ["%"]
            
        } else {
            
            operations.append("%")
            
        }
        
        numbers.append(Double(textLabel.text!)!)
        
        textLabel.text = ""
        
    default:
        
        break
        
    }

}

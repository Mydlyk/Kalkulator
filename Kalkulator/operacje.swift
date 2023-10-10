//
//  operacje.swift
//  Kalkulator
//
//  Created by student on 10/10/2023.
//

import Foundation

struct operations {
    func calculate(first: Int, second: Int, operation :String) -> Double{
        
        switch operation {
        case "+":
            return add(first:Double(first), second: Double(second))

        case "-":
            return sub(first:Double(first), second: Double(second))

        case "*":
            return multiply(first:Double(first), second: Double(second))
        case "/":
            
            if(second == 0){
                
                return 0
            }
            
           return div(first: Double(first), second: Double(second))

        case "sin":
            return sinus(first: Double(first))
        
            
        default:
            print("secret code")
        }
        
        return 10.2
        
    
    
}
func add(first: Double, second: Double)-> Double {return first + second}
func sub(first: Double, second: Double)-> Double {return first - second}
func multiply(first: Double, second: Double) -> Double {return first*second}
func div(first: Double, second: Double) -> Double {
    
    return first/second
}
func sinus(first: Double) -> Double {return sin(first)}
    
}

//
//  ViewController.swift
//  Calculator
//
//  Created by Jakub Jirák on 01/12/2019.
//  Copyright © 2019 Jakub Jirák. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    var result = 0.0
    var temp = 0.0
    var tempPrev = 0.0
    var lastOperation = ""
    let possibleOperations = ["+","-","/","*"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonZeroPressed(_ sender: Any) {
        if(resultLabel.text! == "0" || possibleOperations.contains(resultLabel.text!)){
            resultLabel.text! = "0"
            print("Sorry but why I should write down more zeros.")
        } else {
            resultLabel.text! += "0"
        }
    }
    
    @IBAction func buttonCommaPressed(_ sender: Any) {
        if(!resultLabel.text!.contains(".")){
            resultLabel.text! += "."
        } else {
            print("Comma already in number!")
        }
    }
    
    @IBAction func buttonEqualPressed(_ sender: Any) {
        temp = Double(resultLabel.text!)!
        switch lastOperation {
        case "+":
            result = tempPrev + temp
        case "-":
            result = tempPrev - temp
        case "*":
            result = tempPrev * temp
        case "/":
            result = tempPrev / temp
        default:
            result = tempPrev
        }
        resultLabel.text! = String(result)
    }
        
    @IBAction func buttonOnePressed(_ sender: Any) {
        if(resultLabel.text! == "0" || possibleOperations.contains(resultLabel.text!)){
            resultLabel.text! = "1"
        } else {
            resultLabel.text! += "1"
        }
    }
    
    @IBAction func buttonTwoPressed(_ sender: Any) {
        if(resultLabel.text! == "0" || possibleOperations.contains(resultLabel.text!)){
            resultLabel.text! = "2"
        } else {
            resultLabel.text! += "2"
        }
    }
    
    @IBAction func buttonThreePressed(_ sender: Any) {
        if(resultLabel.text! == "0" || possibleOperations.contains(resultLabel.text!)){
            resultLabel.text! = "3"
        } else {
            resultLabel.text! += "3"
        }
    }
    
    @IBAction func buttonPlusPressed(_ sender: Any) {
        temp = Double(resultLabel.text!)!
        if(tempPrev == 0.0){
            resultLabel.text! = "+"
            tempPrev = temp
        } else {
            tempPrev += temp
            resultLabel.text! = String(tempPrev)
        }
        result = tempPrev
        lastOperation = "+"
    }
    
    @IBAction func buttonFourPressed(_ sender: Any) {
        if(resultLabel.text! == "0" || possibleOperations.contains(resultLabel.text!)){
            resultLabel.text! = "4"
        } else {
            resultLabel.text! += "4"
        }
    }
    
    @IBAction func buttonFivePressed(_ sender: Any) {
        if(resultLabel.text! == "0" || possibleOperations.contains(resultLabel.text!)){
            resultLabel.text! = "5"
        } else {
            resultLabel.text! += "5"
        }
    }
    
    @IBAction func buttonSixPressed(_ sender: Any) {
        if(resultLabel.text! == "0" || possibleOperations.contains(resultLabel.text!)){
            resultLabel.text! = "6"
        } else {
            resultLabel.text! += "6"
        }
    }
    
    @IBAction func buttonMinusPressed(_ sender: Any) {
       temp = Double(resultLabel.text!)!
       if(tempPrev == 0.0){
           resultLabel.text! = "-"
           tempPrev = temp
       } else {
           tempPrev -= temp
           resultLabel.text! = String(tempPrev)
       }
       result = tempPrev
        lastOperation = "-"
    }
    
    @IBAction func buttonSevenPressed(_ sender: Any) {
        if(resultLabel.text! == "0" || possibleOperations.contains(resultLabel.text!)){
            resultLabel.text! = "7"
        } else {
            resultLabel.text! += "7"
        }
    }
    
    @IBAction func buttonEightPressed(_ sender: Any) {
        if(resultLabel.text! == "0" || possibleOperations.contains(resultLabel.text!)){
            resultLabel.text! = "8"
        } else {
            resultLabel.text! += "8"
        }
    }
    
    @IBAction func buttonNinePressed(_ sender: Any) {
        if(resultLabel.text! == "0" || possibleOperations.contains(resultLabel.text!)){
            resultLabel.text! = "9"
        } else {
            resultLabel.text! += "9"
        }
    }
    
    @IBAction func buttonMultiplyPressed(_ sender: Any) {
        temp = Double(resultLabel.text!)!
        if(tempPrev == 0.0){
            resultLabel.text! = "x"
            tempPrev = temp
        } else {
            tempPrev *= temp
            resultLabel.text! = String(tempPrev)
        }
        result = tempPrev
        lastOperation = "*"
    }
    
    @IBAction func buttonACPressed(_ sender: Any) {
        temp = 0.0
        tempPrev = 0.0
        resultLabel.text! = "0"
        result = 0.0
    }
    
    @IBAction func buttonChangeSignPressed(_ sender: Any) {
        temp = Double(resultLabel.text!)!
        if(tempPrev == 0.0){
            if (temp == 0.0) {
                resultLabel.text! = "0"
            } else {
                resultLabel.text! = "0"
                tempPrev = temp
                tempPrev *= -1
                resultLabel.text! = String(tempPrev)
            }
        } else {
            temp *= -1
            resultLabel.text! = String(temp)
        }
        lastOperation = "+/-"
    }
    
    @IBAction func buttonPercentagePressed(_ sender: Any) {
        if(!resultLabel.text!.contains("%")){
            resultLabel.text! = String(tempPrev*100)
        } else {
            resultLabel.text! = String(tempPrev/100)+"%"
        }
        result = tempPrev
    }
    
    @IBAction func buttonDividePressed(_ sender: Any) {
        temp = Double(resultLabel.text!)!
        if(tempPrev == 0.0){
            resultLabel.text! = "/"
            tempPrev = temp
        } else {
            tempPrev /= temp
            resultLabel.text! = String(tempPrev)
        }
        result = tempPrev
        lastOperation = "/"
    }
}


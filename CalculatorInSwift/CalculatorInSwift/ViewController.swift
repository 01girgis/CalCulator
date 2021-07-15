//
//  ViewController.swift
//  CalculatorInSwift
//
//  Created by crus on 6/20/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var calText: UILabel!
    @IBOutlet weak var outText: UILabel!
    
    //Operations Variables
    var firstInput:Double = 0
    var secondInput:Double = 0
    var mathCheckState:Bool = false
    var mathOp: Int = 0
    
    //Mathematical Digits Action
    @IBAction func inputNumbers(_ sender: UIButton) {
        let getTag = sender.tag
        
        //Mathematical Operation
        if mathCheckState == true {
            outText.text = String(getTag)
            mathCheckState = false
        }
        
        else{
            if getTag != 19{
                outText.text = outText.text! + String(getTag)
            }
            //Decimal calculation logic
            if getTag == 19 && outText.text?.last != "." && outText.text != ""{
                outText.text = outText.text! + "."
                calText.text?.append(".")
            }
        }
        
        
        //Second Input add
        secondInput = Double(outText.text!)!
    }
    
    //Mathematical Symbols Action
    @IBAction func outputSymbols(_ sender: Any) {
        let getTag = (sender as! UIButton ).tag
        
        //First Input add
        if outText.text != "" && getTag != 10 && getTag != 18 {
            firstInput =  Double(outText.text!)!
        }
        
        //clean process
        if getTag == 10 {
            outText.text = ""
            calText.text = ""
        }
        
        //Mathematical Symbols Settings
        else if getTag == 14 {
            outText.text = "+"
            calText.text?.append("+")
            mathOp = getTag
            mathCheckState = true
        }
        else if getTag == 15 {
            outText.text = "-"
            calText.text?.append("-")
            mathOp = getTag
            mathCheckState = true
        }
        else if getTag == 16 {
            outText.text = "*"
            calText.text?.append("*")
            mathOp = getTag
            mathCheckState = true
        }
        else if getTag == 17 {
            outText.text = "/"
            calText.text?.append("/")
            mathOp = getTag
            mathCheckState = true
        }
        
        //Equal Button
        else if getTag == 18 {
            
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

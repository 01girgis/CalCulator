//
//
//  Created by Romany GirGis, 2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var calText: UILabel! //UP Cell Text appear
    @IBOutlet weak var outText: UILabel! //Down Result Text
    
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
            //set the the value for decimal dot tag
            if outText.text == "19" {
                outText.text = String(".")
                calText.text?.append(".")
            }
            mathCheckState = false
        }
        
        else{
            if getTag != 19{
                outText.text = outText.text! + String(getTag)
            }
            //Decimal calculation logic
            if getTag == 19 && outText.text?.last != "." {
                outText.text = outText.text! + "."
                calText.text?.append(".")
            }
        }
        
        //UP Cell Show Calculation
        if getTag < 10{
            calText.text?.append(String(getTag))
        }
        
        secondInput = Double(outText.text!) ?? 0.00 //Unwrap Safely
    }
    
    //Mathematical Symbols Action
    @IBAction func outputSymbols(_ sender: Any) {
        let getTag = (sender as! UIButton ).tag
        
        //First Input add
        if outText.text != "" && getTag != 10 && getTag != 18 {
            firstInput =  Double(outText.text!) ?? 0.00
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
            //NSExpression implementation
            let mathExpression = NSExpression(format: calText.text!)
            let result = mathExpression.expressionValue(with: nil, context: nil) ?? 0
            
            //Operations process
            switch mathOp {
            case 14:
                outText.text = "\(result)"
                break
            case 15:
                //outText.text = String(firstInput - secondInput)
                outText.text = "\(result)"
                break
            case 16:
                outText.text = "\(result)"
                break
            case 17:
                outText.text = "\(result)"
                break
            default:
                print("unknown error")
                break
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

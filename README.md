# Calculator

Calculator Project in swift & Objective-C

## Calculator in swift 
i used  common library [NSException](https://github.com/broadwaylamb/SwiftyNSException) , for handling NSException error for NSExpression thrown error 
```swift
            //Basic swift NSException Catch
            do {
                
                _ = try handle { () -> String in
                    
                    //Check NSExpression
                    let mathExpression = NSExpression(format: self.calText.text!)
                    let result = mathExpression.expressionValue(with: nil, context: nil) ?? 0.00
                    
                    //Operations process
                    switch self.mathOp {
                    case 14:
                        self.outText.text = "\(result)"
                        self.outText.textColor = UIColor.white
                        break
                    case 15:
                        self.outText.text = "\(result)"
                        self.outText.textColor = UIColor.white
                        break
                    case 16:
                        self.outText.text = "\(result)"
                        self.outText.textColor = UIColor.white
                        break
                    case 17:
                        self.outText.text = "\(result)"
                        self.outText.textColor = UIColor.white
                        break
                    default:
                        print("unknown error")
                        break
                    }
                    
                    return "OK"
                }
                
            } catch is NSException {
                //Exception Handler
                self.outText.text = "False Expression"
                self.outText.textColor = UIColor(red: 0.86, green: 0.19, blue: 0.14, alpha: 1.00)
            } catch {
                //Other error thrown.
            }
```

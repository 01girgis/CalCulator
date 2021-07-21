//
//
//
//  Created by Romany GirGis, 2021.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (IBAction)actionCatch:(UIButton *)sender {
    //save button tag
    NSInteger getTag = sender.tag;
    
    if (getTag < 18){
        //convert button tag to String
        NSString *inputVal = [NSString stringWithFormat:@"%ld",getTag];
        
        //apply every button's function
        switch (getTag) {
            //clear status
            case 11:
                self.calText.text = @""; break;
                
            //Decimal Dot
            case 10:
                self.calText.text = [self.calText.text stringByAppendingFormat:@"."]; break;
            
            //Mathematical symbols
            case 14:
                self.calText.text = [self.calText.text stringByAppendingFormat:@"+"]; break;
            case 13:
                self.calText.text = [self.calText.text stringByAppendingFormat:@")"]; break;
            case 12:
                self.calText.text = [self.calText.text stringByAppendingFormat:@"("]; break;
            case 15:
                self.calText.text = [self.calText.text stringByAppendingFormat:@"-"]; break;
            case 16:
                self.calText.text = [self.calText.text stringByAppendingFormat:@"*"]; break;
            case 17:
                self.calText.text = [self.calText.text stringByAppendingFormat:@"/"]; break;
            
            //Numbers
            default:
                self.calText.text = [self.calText.text stringByAppendingFormat:@"%@",inputVal];
                break;
        }
    }
    
    //Equal Status
    if (getTag == 18){
           //Calaculation with NSExpression
            NSExpression *expressMath = [NSExpression expressionWithFormat:self.calText.text];
            NSNumber *finalResult = [expressMath expressionValueWithObject:nil context:nil];
            self.resultText.text = finalResult.stringValue;
        }
}
@end

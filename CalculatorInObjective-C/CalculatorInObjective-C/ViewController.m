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
           
            //Numbers
            default:
                self.calText.text = [self.calText.text stringByAppendingFormat:@"%@",inputVal];
                break;
        }
    }
}
@end

//
//  ViewController.m
//  calcIos
//
//  Created by Makcim Mikhailov on 25.10.18.
//  Copyright © 2018 Makcim Mikhailov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *result;

@property double x;
@property double y;
@property NSInteger operator;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonPressed:(id)sender {
    UIButton *button = (UIButton*)sender;
    NSInteger bTag = button.tag;
    switch (bTag) {
        case 10:
            [self.result setText:[[NSNumber numberWithDouble:0]stringValue]];
            self.y=0;
            break;
        case 11:
            self.operator=bTag;
            [self saveX];
            break;
        case 12:
            self.operator=bTag;
            [self saveX];
            break;
        case 13:
            self.operator=bTag;
            [self saveX];
            break;
        case 14:
            self.operator=bTag;
            [self saveX];
            break;
        default:
            [self.result setText:[[NSNumber numberWithDouble:bTag]stringValue]];
            self.y=bTag;
            break;
    }
    
    
}

- (void) saveX{
    if( self.x==0){
        self.x = self.y;
    }
}
- (IBAction)equalityPressed:(id)sender {
    switch(self.operator) {
        case 11:
            self.x+= self.y;
            break;
        case 12:
            self.x-= self.y;
            break;
        case 13:
            self.x*= self.y;
            break;
        case 14:
            if(self.y==0){
                [self showAlert];
            }else{
            self.x/= self.y;
            }
            
            break;
    }
    [self.result setText:[[NSNumber numberWithDouble:self.x] stringValue]];
}
-(void) showAlert{
    NSLog(@"%@",@"Нельзя делить на ноль");
}
- (IBAction)clear:(id)sender {
    self.x=0;
    self.y=0;
    self.operator=0;
    [self.result setText:[[NSNumber numberWithDouble:0] stringValue]];
   
    
}


@end

//
//  ViewController.m
//  Calculate
//
//  Created by mh on 11/6/13.
//  Copyright (c) 2013 techmaster. All rights reserved.
//

#import "ViewController.h"
#import <Math.h>

@interface ViewController ()
@property (nonatomic) int imath;
@property (nonatomic) float total;
@property (nonatomic) BOOL isequal;
@end
@implementation ViewController
@synthesize display,imath,total,isequal;


- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttontap0:(id)sender {
    [self clear0];
    if (isequal == YES) {
        display.text =@"";
        isequal = NO;
    }
    display.text=[NSString stringWithFormat:@"%@0",display.text];
}
- (IBAction)buttontap1:(id)sender {
    [self clear0];
    if (isequal == YES) {
        display.text =@"";
        isequal = NO;
    }
    display.text=[NSString stringWithFormat:@"%@1",display.text];
}
- (IBAction)buttontap2:(id)sender {
    [self clear0];
    if (isequal == YES) {
        display.text =@"";
        isequal = NO;
    }
    display.text=[NSString stringWithFormat:@"%@2",display.text];
    
}
- (IBAction)buttontap3:(id)sender {
    [self clear0];
    if (isequal == YES) {
        display.text =@"";
        isequal = NO;
    }
        display.text=[NSString stringWithFormat:@"%@3",display.text];
}
- (IBAction)buttontap4:(id)sender {
    [self clear0];
    if (isequal == YES) {
        display.text =@"";
        isequal = NO;
    }
        display.text=[NSString stringWithFormat:@"%@4",display.text];
}
- (IBAction)buttontap5:(id)sender {
    [self clear0];
    if (isequal == YES) {
        display.text =@"";
        isequal = NO;
    }
        display.text=[NSString stringWithFormat:@"%@5",display.text];
}
- (IBAction)buttontap6:(id)sender {
    [self clear0];
    if (isequal == YES) {
        display.text =@"";
        isequal = NO;
    }
        display.text=[NSString stringWithFormat:@"%@6",display.text];
}
- (IBAction)buttontap7:(id)sender {
    [self clear0];
    if (isequal == YES) {
        display.text =@"";
        isequal = NO;
    }
        display.text=[NSString stringWithFormat:@"%@7",display.text];
}
- (IBAction)buttontap8:(id)sender {
    [self clear0];
    if (isequal == YES) {
        display.text =@"";
        isequal = NO;
    }
        display.text=[NSString stringWithFormat:@"%@8",display.text];
}
- (IBAction)buttontap9:(id)sender {
    [self clear0];
    if (isequal == YES) {
        display.text =@"";
        isequal = NO;
    }
        display.text=[NSString stringWithFormat:@"%@9",display.text];
}
- (IBAction)dotbutton:(UIButton *)sender{    display.text=[NSString stringWithFormat:@"%@.",display.text];
    
}



- (IBAction)equalsbutton:(UIButton *)sender{
    Math *functmath = [Math new];
    float val = [display.text floatValue];
    switch (imath) {
        case 1:
            display.text = [NSString stringWithFormat:@"%3.2f",[functmath addfunctWitha:val andb:total]];
            break;
        case 2:
            display.text = [NSString stringWithFormat:@"%3.2f",[functmath minusfunctWitha:val andb:total]];
            break;
        case 3:
            display.text = [NSString stringWithFormat:@"%3.2f",[functmath multiplyfunctWitha:val andb:total]];
            break;
        case 4:
            display.text = [NSString stringWithFormat:@"%3.2f",[functmath dividefunctWitha:val andb:total]];
            break;
            
        default:
            break;
        
    
    }
    isequal =YES;
}
- (IBAction)plusbutton:(UIButton *)sender{
    self.imath = 1;
    total = [display.text floatValue];
    display.text = @"";
    
}
- (IBAction)minusbutton:(UIButton *)sender{
    self.imath = 2;
    total = [display.text floatValue];
    display.text = @"";
    
}
- (IBAction)multiplybutton:(UIButton *)sender{
    self.imath = 3;
    total = [display.text floatValue];
    display.text = @"";
}
- (IBAction)dividebutton:(UIButton *)sender{
    self.imath = 4;
    total = [display.text floatValue];
    display.text = @"";
}
- (IBAction)clearDisplay:(UIButton *)sender{
    self.display.text =@"0";
}
-(void) clear0{
    if([display.text  isEqual: @"0"]){
        display.text = @"";
    }
}
@end

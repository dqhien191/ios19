//
//  ViewController.h
//  Calculate
//
//  Created by mh on 11/6/13.
//  Copyright (c) 2013 techmaster. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *display;
@property (weak, nonatomic) IBOutlet UIButton *button0;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;
@property (weak, nonatomic) IBOutlet UIButton *button5;
@property (weak, nonatomic) IBOutlet UIButton *button6;
@property (weak, nonatomic) IBOutlet UIButton *button7;
@property (weak, nonatomic) IBOutlet UIButton *button8;
@property (weak, nonatomic) IBOutlet UIButton *button9;
@property (weak, nonatomic) IBOutlet UIButton *buttondot;


- (IBAction)buttontap0:(id)sender;
- (IBAction)buttontap1:(id)sender;
- (IBAction)buttontap2:(id)sender;
- (IBAction)buttontap3:(id)sender;
- (IBAction)buttontap4:(id)sender;
- (IBAction)buttontap5:(id)sender;
- (IBAction)buttontap6:(id)sender;
- (IBAction)buttontap7:(id)sender;
- (IBAction)buttontap8:(id)sender;
- (IBAction)buttontap9:(id)sender;



- (IBAction)equalsbutton:(UIButton *)sender;
- (IBAction)plusbutton:(UIButton *)sender;
- (IBAction)minusbutton:(UIButton *)sender;
- (IBAction)multiplybutton:(UIButton *)sender;
- (IBAction)dividebutton:(UIButton *)sender;


- (IBAction)clearDisplay:(UIButton *)sender;
- (IBAction)dotbutton:(UIButton *)sender;

@end

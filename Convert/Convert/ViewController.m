//
//  ViewController.m
//  Convert
//
//  Created by mh on 11/5/13.
//  Copyright (c) 2013 techmaster. All rights reserved.
//

#import "ViewController.h"
#import "Function.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *text1;
@property (weak, nonatomic) IBOutlet UITextField *text2;
@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (nonatomic) BOOL isLength;
@property (nonatomic) BOOL isDegree;

@end
@class Function;
@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.isLength = NO;
    self.isDegree = NO;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)KmMilesConvert:(id)sender {
    self.label1.text = @"Km";
    self.label2.text = @"Miles";
    self.isLength = YES;
    self.isDegree = NO;
    
}

- (IBAction)CelciusFaraConvert:(id)sender {
    self.label1.text = @"Celcius";
    self.label2.text = @"Fara";
    self.isDegree = YES;
    self.isLength = NO;
}
- (IBAction)Convert:(id)sender {
    Function *func = [[Function alloc]init];
    if ((self.isLength == YES)) {
        if ([self.text1 isFirstResponder]) {
            [func KmtoMile:[self.text1.text floatValue]];
            self.text2.text = [NSString stringWithFormat:@"%3.2f",        [func KmtoMile:[self.text1.text floatValue]]];
            
        }
        else{
            [func MiletoKm:[self.text2.text floatValue]];
            self.text1.text = [NSString stringWithFormat:@"%3.2f",        [func MiletoKm:[self.text2.text floatValue]]];
            
        }

    }
    if ((self.isDegree == YES)) {
        if ([self.text1 isFirstResponder]) {
            [func CelciustoFara:[self.text1.text floatValue]];
            self.text2.text = [NSString stringWithFormat:@"%3.2f",        [func CelciustoFara:[self.text1.text floatValue]]];
            
        }
        else{
            [func FaratoCelcius:[self.text2.text floatValue]];
            self.text1.text = [NSString stringWithFormat:@"%3.2f",        [func FaratoCelcius:[self.text2.text floatValue]]];
            
        }
        
    }
    [self.view endEditing:YES];

    
}
- (IBAction)reset:(id)sender {
    self.text1.text = @"";
    self.text2.text = @"";
}


@end

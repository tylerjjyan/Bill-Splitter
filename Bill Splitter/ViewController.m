//
//  ViewController.m
//  Bill Splitter
//
//  Created by Tyler Yan on 2015-07-12.
//  Copyright (c) 2015 Foodee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UISlider *numberOfPeopleSlider;
@property (weak, nonatomic) IBOutlet UILabel *sliderCurrentValue;
@property (weak, nonatomic) IBOutlet UILabel *splitAmountLabel;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *currentSliderValue = [NSString stringWithFormat:@"Total Number of People: %1.0f", self.numberOfPeopleSlider.value];
    
    self.sliderCurrentValue.text = currentSliderValue;

    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)calculateSplitAmountButton:(id)sender {
    
    float inputValue = [self.billAmountTextField.text floatValue];
    
    int sliderValue = (int)self.numberOfPeopleSlider.value;
        
    float splitValue = inputValue / (float)sliderValue;
    
    self.splitAmountLabel.text = [NSString stringWithFormat:@"Split Amount: $%.2f", splitValue];

    
    
}
- (IBAction)sliderMoved:(id)sender {
    
    NSString *currentSliderValue = [NSString stringWithFormat:@"Total Number of People: %1.0f", self.numberOfPeopleSlider.value];
    
    self.sliderCurrentValue.text = currentSliderValue;
    
    
    
}

@end

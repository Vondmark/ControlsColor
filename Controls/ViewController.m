//
//  ViewController.m
//  Controls
//
//  Created by Mark on 2/8/19.
//  Copyright © 2019 Mark. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

typedef enum{
  
    ColorSchemeTypeRGB,
    ColorSchemeTypeHSV
    
} ColorSchemeType;


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self refreshScreen];
}

#pragma mark - Private Methods

-(void) refreshScreen{
    
    CGFloat red = self.redComponentSlider.value;
    CGFloat green = self.greenComponentSlider.value;
    CGFloat blue = self.blueComponentSlider.value;
    
    
    
    UIColor* color = nil;
    
    if (self.colorSchemeControl.selectedSegmentIndex == ColorSchemeTypeRGB) {
        color = [UIColor colorWithRed:red green:green blue:blue alpha:1];
    }else{
        color = [UIColor colorWithHue:red saturation:green brightness:blue alpha:1];
    }
    
    CGFloat hue,saturation,brightness,alpha;
    
    NSString* result = @"";
    
    if ([color getRed:&red green:&green blue:&blue alpha:&alpha]) {
        result = [result stringByAppendingFormat:@"RGB:{%1.2f, %1.2f, %1.2f}" ,red,green,blue];
    }else{
        result = [result stringByAppendingFormat:@"RGB:{No DATA}"];
    }
    if ([color getHue:&hue saturation:&saturation brightness:&brightness alpha:&alpha]) {
        result = [result stringByAppendingFormat:@" HSV:{%1.2f, %1.2f, %1.2f}" ,hue ,saturation,brightness];
    }else{
        result = [result stringByAppendingFormat:@"\tHSV:{No DATA}"];
    }
    
    
    self.infoLabel.text = result;
    
    self.view.backgroundColor = color;
}


#pragma mark - Actions
- (IBAction)sliderActiom:(UISlider *)sender {
    
    [self refreshScreen];
    
}

- (IBAction)enebleAction:(UISwitch *)sender {
    
    //self.redComponentSlider.enabled = self.greenComponentSlider.enabled = self.blueComponentSlider.enabled = sender.isOn;
    
    self.redComponentSlider.enabled = sender.isOn;
    self.greenComponentSlider.enabled = sender.isOn;
    self.blueComponentSlider.enabled = sender.isOn;
}
@end

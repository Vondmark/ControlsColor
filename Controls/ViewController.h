//
//  ViewController.h
//  Controls
//
//  Created by Mark on 2/8/19.
//  Copyright © 2019 Mark. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;
@property (weak, nonatomic) IBOutlet UISlider *redComponentSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueComponentSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenComponentSlider;
@property (weak, nonatomic) IBOutlet UISegmentedControl *colorSchemeControl;



- (IBAction)sliderActiom:(UISlider *)sender;
- (IBAction)enebleAction:(UISwitch *)sender;

@end


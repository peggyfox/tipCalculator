//
//  SettingsViewController.m
//  tipcalculator
//
//  Created by Margaret Fox on 10/8/15.
//  Copyright (c) 2015 Peggy Fox. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultPercentageControl;
@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadUserDefaults];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [self loadUserDefaults];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)onValueChange:(UISegmentedControl *)sender {
    [self saveTipPercentage];
}

- (void)loadUserDefaults {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int defaultPercentage = [defaults integerForKey:@"defaultPercentageKey"];
    self.defaultPercentageControl.selectedSegmentIndex = defaultPercentage;
}

- (void)saveTipPercentage {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:self.defaultPercentageControl.selectedSegmentIndex forKey:@"defaultPercentageKey"];
    [defaults synchronize];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  ViewController.m
//  Configuration
//
//  Created by Klaas Pieter Annema on 12/11/14.
//  Copyright (c) 2014 Klaas Pieter Annema. All rights reserved.
//

#import "ViewController.h"

#import "Configuration.h"

@interface ViewController ()
@property (nonatomic, readwrite, strong) Configuration *configuration;

@property (weak, nonatomic) IBOutlet UILabel *environmentLabel;
@property (weak, nonatomic) IBOutlet UILabel *reportCrashesLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.configuration = [Configuration defaultConfiguration];

    self.environmentLabel.text = [self.configuration settingForKey:@"environment"];
    self.reportCrashesLabel.text = [[self.configuration settingForKey:@"report_crashes"] boolValue] ? @"Yes" : @"No";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

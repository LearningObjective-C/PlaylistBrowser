//
//  ViewController.m
//  Algorhythm
//
//  Created by Cookie Gu on 15/10/9.
//  Copyright © 2015年 Cookie Gu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.aButton setTitle:@"Press me!" forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    UIColor *redColor = [UIColor redColor];
    [self.aButton setBackgroundColor:redColor];
    self.view.backgroundColor = [UIColor orangeColor];
}

@end

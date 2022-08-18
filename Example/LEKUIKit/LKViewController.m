//
//  LKViewController.m
//  LEKUIKit
//
//  Created by LKShadow on 08/17/2022.
//  Copyright (c) 2022 LKShadow. All rights reserved.
//

#import "LKViewController.h"
#import "LKSecondeController.h"
@interface LKViewController ()

@end

@implementation LKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"首页";
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.navigationController pushViewController:[LKSecondeController new] animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

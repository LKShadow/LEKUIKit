//
//  LKSecondeController.m
//  LEKUIKit_Example
//
//  Created by BOE on 2022/8/18.
//  Copyright © 2022 LKShadow. All rights reserved.
//

#import "LKSecondeController.h"

@interface LKSecondeController ()

@end

@implementation LKSecondeController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"第二个界面";
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    // push到下一界面，返回没有文字
    [self pushViewController:[LKSecondeController new]];
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

//
//  LKBaseNavigaiotnController.m
//  LEKUIKit
//
//  Created by BOE on 2022/8/18.
//

#import "LKBaseNavigaiotnController.h"

@interface LKBaseNavigaiotnController ()

@end

@implementation LKBaseNavigaiotnController

- (void)viewDidLoad {
    [super viewDidLoad];
    _hideNavLeftTitle = YES;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.hideNavLeftTitle) {
        UIBarButtonItem *backItem = [[UIBarButtonItem alloc] init];
        backItem.title = @"";
        backItem.image = [UIImage new];
        viewController.navigationItem.backBarButtonItem = backItem;
    }
    [super pushViewController:viewController animated:animated];
}


@end

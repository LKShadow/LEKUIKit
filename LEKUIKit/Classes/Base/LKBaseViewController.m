//
//  LKBaseViewController.m
//  LKUIKit
//
//  Created by BOE on 2022/8/17.
//

#import "LKBaseViewController.h"

@interface LKBaseViewController ()

@end

@implementation LKBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (!self.view.backgroundColor) {
        self.view.backgroundColor = [UIColor whiteColor];
    }
    
    if ([self conformsToProtocol:@protocol(LKViewController)]) {
        [self performSelector:@selector(initNavigation)];
        [self performSelector:@selector(initSubviews)];
        [self performSelector:@selector(initData)];
    }
    
}
/** 布局子控件*/
- (void)initSubviews {
    return;
}
/** 初始化数据*/
- (void)initData {
    return;
}
/** 初始化导航栏设置 */
- (void)initNavigation {
    return;
}

- (void)pushViewController:(UIViewController *)viewController {
    [self.navigationController pushViewController:viewController animated:YES];
}

- (void)cannelNetWorkRequest {
   
}

- (void)dealloc {
    if (self.viewDeallocRequestCurrentViewRequest) {
        [self cannelNetWorkRequest];
    }
}

- (NSMutableArray *)requestUrlList {
    if (!_requestUrlList) {
        _requestUrlList = [NSMutableArray array];
    }
    return _requestUrlList;
}

@end

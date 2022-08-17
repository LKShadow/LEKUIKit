//
//  LKBaseViewController.h
//  LKUIKit
//
//  Created by BOE on 2022/8/17.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol LKViewController <NSObject>
@optional
/** 布局子控件*/
- (void)initSubviews;
/** 初始化数据*/
- (void)initData;
/** 初始化导航栏设置 */
- (void)initNavigation;

@end

@interface LKBaseViewController : UIViewController <LKViewController>
/** 用于存储当前界面的网络请求URL，页面销毁时通过遍历URL，进行定位取消网络请求/也可以自己定义数组存取 */
@property (nonatomic, strong) NSMutableArray *requestUrlList;
/** 页面销毁时是否自动取消该页面网络请求，默认NO */
@property (nonatomic, assign) BOOL viewDeallocRequestCurrentViewRequest;
/** 页面销毁时，取消网络请求。需要自己实现，这里提供一个入口，无需调用 */
- (void)cannelNetWorkRequest;


- (void)pushViewController:(UIViewController *)viewController;

@end

NS_ASSUME_NONNULL_END

//
//  LKUIMacro.h
//  LKUIKit
//
//  Created by BOE on 2022/7/27.
//

#ifndef LKUIMacro_h
#define LKUIMacro_h

#import <UIKit/UIKit.h>

// Screen Macro
#define SCREEN_BOUNDS [[UIScreen mainScreen] bounds]

#define SCREEN_WIDTH  (SCREEN_BOUNDS.size.width)

#define SCREEN_HEIGHT (SCREEN_BOUNDS.size.height)

#define SCREEN_SCALE ([[UIScreen mainScreen] scale])

// 输入Normal尺寸 输出等比例当前屏幕尺寸
#define RELATIVE_SIZE(value) (floor((value)/375.0f*SCREEN_WIDTH*SCREEN_SCALE)/SCREEN_SCALE)

#pragma mark - 变量-布局相关
// 状态栏高度(来电等情况下，状态栏高度会发生变化，所以应该实时计算)
#define STATUS_BAR_HEIGHT ([[UIApplication sharedApplication] statusBarFrame].size.height)
// navigationBar相关frame
#define NAVIGATION_BAR_HEIHGT 44


// Color Macro
#define RGB_HEX_COLOR(hexColor) [UIColor colorWithRed:(((hexColor >> 16) & 0xFF))/255.0f \
                                                green:(((hexColor >> 8) & 0xFF))/255.0f  \
                                                 blue:((hexColor & 0xFF))/255.0f         \
                                                alpha:1]
#define ARGB_HEX_COLOR(hexColor) [UIColor colorWithRed:(((hexColor >> 16) & 0xFF))/255.0f \
                                                 green:(((hexColor >> 8) & 0xFF))/255.0f  \
                                                  blue:((hexColor & 0xFF))/255.0f         \
                                                 alpha:(((hexColor >> 24) & 0xFF))/255.0f]

#define RGB_COLOR(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1]
#define RGBA_COLOR(r, g, b ,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]
#define RANDOM_COLOR RGB_COLOR(arc4random_uniform(255), arc4random_uniform(255), arc4random_uniform(255))
#define RGB_HEX_COLOR_A(rgbValue,a) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0                                                                  green:((float)((rgbValue & 0xFF00) >> 8))/255.0                                                                            blue:((float)(rgbValue & 0xFF))/255.0                                                                                      alpha:(a)]

#endif /* LKUIMacro_h */

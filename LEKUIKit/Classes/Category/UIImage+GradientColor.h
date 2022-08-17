//
//  UIImage+GradientColor.h
//  LKUIKit
//
//  Created by BOE on 2022/7/29.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSUInteger, GradientType) {
    GradientTypeTopToBottom     = 0, ///<
    GradientTypeLeftToRight     = 1, ///<从左到右
    GradientTypeUpLeftToLowRight    = 2, ///< 从左上到右下
    GradientTypeUpRightToLowLeft    = 3, ///< 从右上到左下
};

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (GradientColor)

/** 通过一组颜色生成一个渐变的图片 */
+ (UIImage *)gradientColorImageFromColors:(NSArray <UIColor *>*)colors gradientType:(GradientType)gradientType imageSize:(CGSize)imgSize;
/** 通过颜色生成一个纯色图片*/
+ (UIImage *)imageWithColor:(UIColor *)color;

/** 通过设定图片大小，进行重绘，主要解决二维码显示模糊问题*/
+ (UIImage *)drawImage:(CIImage *)img ImageSize:(CGFloat)imgSize;

@end

NS_ASSUME_NONNULL_END

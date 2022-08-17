//
//  UIImage+GradientColor.m
//  LKUIKit
//
//  Created by BOE on 2022/7/29.
//

#import "UIImage+GradientColor.h"

@implementation UIImage (GradientColor)

+ (UIImage *)gradientColorImageFromColors:(NSArray<UIColor *> *)colors gradientType:(GradientType)gradientType imageSize:(CGSize)imgSize {
    if (colors.count == 0 || colors) {
        return  nil;
    }
    NSMutableArray *ar = [NSMutableArray array];
    for(UIColor *clr in colors){
        [ar addObject:(id)clr.CGColor];
    }
    UIGraphicsBeginImageContextWithOptions(imgSize, YES, 1);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    CGColorSpaceRef spaceReft = CGColorGetColorSpace([colors lastObject].CGColor);
    CGGradientRef gradient = CGGradientCreateWithColors(spaceReft, (CFArrayRef)ar, NULL);
    CGPoint start;
    CGPoint end;
    switch (gradientType) {
        case GradientTypeTopToBottom:
            start = CGPointMake(0.0, 0.0);
            end = CGPointMake(0.0, imgSize.height);
            break;
        case GradientTypeLeftToRight:
            start = CGPointMake(0.0, 0.0);
            end = CGPointMake(imgSize.width, 0.0);
            break;
        case GradientTypeUpLeftToLowRight:
            start = CGPointMake(0.0, 0.0);
            end = CGPointMake(imgSize.width, imgSize.height);
            break;
        case GradientTypeUpRightToLowLeft:
            start = CGPointMake(imgSize.width, 0.0);
            end = CGPointMake(0.0, imgSize.height);
            break;
        default:
            break;
    }
    CGContextDrawLinearGradient(context, gradient, start, end, kCGGradientDrawsBeforeStartLocation);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    CGGradientRelease(gradient);
    CGContextRestoreGState(context);
    CGColorSpaceRelease(spaceReft);
    UIGraphicsEndImageContext();
    return image;
}

+ (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0, 1.0, 1.0);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

+ (UIImage *)drawImage:(CIImage *)img ImageSize:(CGFloat)imgSize {
    
    CGRect extent = CGRectIntegral(img.extent);
    
    CGFloat scale = MIN(imgSize/CGRectGetWidth(extent), imgSize/CGRectGetHeight(extent));
    
    size_t width = CGRectGetWidth(extent) * scale;
    size_t height = CGRectGetHeight(extent) * scale;
    
    CGColorSpaceRef colorSpaceRef = CGColorSpaceCreateDeviceGray();
    CGContextRef contextRef = CGBitmapContextCreate(nil, width, height, 8, 0, colorSpaceRef, (CGBitmapInfo)kCGImageAlphaNone);
    CIContext *context = [CIContext contextWithOptions:nil];
    CGImageRef imageRef = [context createCGImage:img fromRect:extent];
    CGContextSetInterpolationQuality(contextRef, kCGInterpolationNone);
    CGContextScaleCTM(contextRef, scale, scale);
    CGContextDrawImage(contextRef, extent, imageRef);
    CGImageRef imageRefResized = CGBitmapContextCreateImage(contextRef);
    
    // Release
    CGContextRelease(contextRef);
    CGImageRelease(imageRef);
    CGColorSpaceRelease(colorSpaceRef);
    
    UIImage *image = [UIImage imageWithCGImage:imageRefResized];
    CFRelease(imageRefResized);
    return image;
}

@end

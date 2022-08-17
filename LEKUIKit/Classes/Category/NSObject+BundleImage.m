//
//  NSObject+BundleImage.m
//  LEKUIKit
//
//  Created by BOE on 2022/8/17.
//

#import "NSObject+BundleImage.h"

@implementation NSObject (BundleImage)

- (UIImage *)getImageWithName:(NSString *)iconName bundleName:(NSString *)bundleName {
    static NSBundle *resourceBoundle = nil;
    if (!resourceBoundle) {
        NSBundle *mainBundle = [NSBundle bundleForClass:[self class]];
        NSString *sourcePath = [mainBundle pathForResource:bundleName ofType:@"bundle"];
        resourceBoundle = [NSBundle bundleWithPath:sourcePath] ?: mainBundle;
    }
    UIImage *img = [UIImage imageNamed:iconName inBundle:resourceBoundle compatibleWithTraitCollection:nil];
    return img;
}

@end

//
//  NSObject+BundleImage.h
//  LEKUIKit
//
//  Created by BOE on 2022/8/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (BundleImage)
/** 获取framework中的 .xcassets中图片信息
 * @Param iconName 图片名称
 * @Param bundleName 组件库中.podspec中 对应的 's.resource_bundles'中的 key 对应的名称
 */
- (UIImage *)getImageWithName:(NSString *)iconName bundleName:(NSString *)bundleName;

@end

NS_ASSUME_NONNULL_END

//
//  NSObject+FontSize.m
//  PTLUIFont
//
//  Created by Roc on 2018/6/27.
//  Copyright © 2018年 PTLCoder. All rights reserved.
//
/**
    注意：
    * 在xib和SB里面设置的字体大小，更改是无效的，
    * 只有手动设置文本的字体大小才生效
 */

#import "UIFont+FontSize.h"
#import <objc/runtime.h>

// UI设计原型图的手机尺寸宽度(6s), 6p的--414
#define MyUIScreen  375

@implementation UIFont (FontSize)

+(void)load {
    Method newMethod = class_getClassMethod([self class], @selector(ptl_systemFontOfSize:));
    Method method = class_getClassMethod([self class], @selector(systemFontOfSize:));
    method_exchangeImplementations(newMethod, method);
}

+ (UIFont *)ptl_systemFontOfSize:(CGFloat)fontSize {
    return [UIFont ptl_systemFontOfSize:fontSize * UIScreen.mainScreen.bounds.size.width/MyUIScreen];
}

@end

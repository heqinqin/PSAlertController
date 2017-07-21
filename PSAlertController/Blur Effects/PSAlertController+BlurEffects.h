//
//  PSAlertController+BlurEffects.h
//  PSAlertControllerDemo
//
//  Created by tanyang on 15/10/26.
//  Copyright © 2015年 tanyang. All rights reserved.
//

#import "PSAlertController.h"

typedef NS_ENUM(NSUInteger, BlurEffectStyle) {
    BlurEffectStyleLight,
    BlurEffectStyleExtraLight,
    BlurEffectStyleDarkEffect,
};

@interface PSAlertController (BlurEffects)

- (void)setBlurEffectWithView:(UIView *)view;

- (void)setBlurEffectWithView:(UIView *)view style:(BlurEffectStyle)blurStyle;

- (void)setBlurEffectWithView:(UIView *)view effectTintColor:(UIColor *)effectTintColor;

@end

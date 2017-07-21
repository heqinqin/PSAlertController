//
//  PSBaseAnimation.m
//  PSAlertControllerDemo
//
//  Created by SunYong on 15/9/1.
//  Copyright (c) 2015年 tanyang. All rights reserved.
//

#import "PSBaseAnimation.h"

@interface PSBaseAnimation ()
@property (nonatomic, assign) BOOL isPresenting;
@end

@implementation PSBaseAnimation

- (instancetype)initWithIsPresenting:(BOOL)isPresenting
{
    if (self = [super init]) {
        self.isPresenting = isPresenting;
    }
    return self;
}

+ (instancetype)alertAnimationIsPresenting:(BOOL)isPresenting
{
    return [[self alloc]initWithIsPresenting:isPresenting];
}

+ (instancetype)alertAnimationIsPresenting:(BOOL)isPresenting preferredStyle:(PSAlertControllerStyle)preferredStyle
{
    return [[self alloc]initWithIsPresenting:isPresenting];
}

// override this moethod
- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext
{
    return 0.4;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    if (_isPresenting) {
        [self presentAnimateTransition:transitionContext];
    }else {
        [self dismissAnimateTransition:transitionContext];
    }
}

- (void)presentAnimateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    
}

- (void)dismissAnimateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    
}

@end

//
//  PSAlertController+TransitionAnimate.m
//  PSAlertControllerDemo
//
//  Created by tanyang on 15/9/1.
//  Copyright (c) 2015年 tanyang. All rights reserved.
//

#import "PSAlertController.h"
#import "PSAlertFadeAnimation.h"
#import "PSAlertScaleFadeAnimation.h"
#import "PSAlertDropDownAnimation.h"

@implementation PSAlertController (TransitionAnimate)

#pragma mark - UIViewControllerTransitioningDelegate

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    switch (self.transitionAnimation) {
        case TYAlertTransitionAnimationFade:
            return [PSAlertFadeAnimation alertAnimationIsPresenting:YES];
        case TYAlertTransitionAnimationScaleFade:
            return [PSAlertScaleFadeAnimation alertAnimationIsPresenting:YES];
        case TYAlertTransitionAnimationDropDown:
            return [PSAlertDropDownAnimation alertAnimationIsPresenting:YES];
        case TYAlertTransitionAnimationCustom:
            return [self.class alertAnimationIsPresenting:YES preferredStyle:self.preferredStyle];
        default:
            return nil;
    }
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    switch (self.transitionAnimation) {
        case TYAlertTransitionAnimationFade:
            return [PSAlertFadeAnimation alertAnimationIsPresenting:NO];
        case TYAlertTransitionAnimationScaleFade:
            return [PSAlertScaleFadeAnimation alertAnimationIsPresenting:NO];
        case TYAlertTransitionAnimationDropDown:
            return [PSAlertDropDownAnimation alertAnimationIsPresenting:NO];
        case TYAlertTransitionAnimationCustom:
            return [self.class alertAnimationIsPresenting:NO preferredStyle:self.preferredStyle];
        default:
            return nil;
    }
}

@end

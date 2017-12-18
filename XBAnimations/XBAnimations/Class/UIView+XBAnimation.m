//
//  UIView+XBAnimation.m
//  XBAnimations
//
//  Created by xiabob on 2017/12/18.
//  Copyright © 2017年 xiabob. All rights reserved.
//

#import "UIView+XBAnimation.h"

@implementation UIView (XBAnimation)

#pragma mark - Run Animation

- (void)runAnimation:(CAAnimation *)animation {
    NSString *key = [NSString stringWithFormat:@"%p_key", animation];
    animation.fillMode = kCAFillModeForwards;
    animation.removedOnCompletion = NO;
    [self.layer addAnimation:animation forKey:key];
}

- (void)runAnimation:(CAAnimation *)animation completion:(void (^)(void))block {
    [CATransaction begin];
    [CATransaction setCompletionBlock:block];
    animation.fillMode = kCAFillModeForwards;
    animation.removedOnCompletion = NO;
    [self runAnimation:animation];
    [CATransaction commit];
}

- (void)runAnimation:(CAAnimation *)animation withKey:(NSString *)key {
    animation.fillMode = kCAFillModeForwards;
    animation.removedOnCompletion = NO;
    [self.layer addAnimation:animation forKey:key];
}

- (void)runAnimation:(CAAnimation *)animation withKey:(NSString *)key completion:(void (^)(void))block {
    [CATransaction begin];
    [CATransaction setCompletionBlock:block];
    [self runAnimation:animation withKey:key];
    [CATransaction commit];
}

#pragma mark - Remove Animation

- (void)removeAnimationForKey:(NSString *)key {
    [self.layer removeAnimationForKey:key];
}

- (void)removeAllAnimations {
    [self.layer removeAllAnimations];
}

#pragma mark - Utils

- (BOOL)hasAnimations {
    return self.layer.animationKeys;
}

- (nullable CAAnimation *)animationForKey:(NSString *)key {
    return [self.layer animationForKey:key];
}


@end

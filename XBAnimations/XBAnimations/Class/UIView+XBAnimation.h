//
//  UIView+XBAnimation.h
//  XBAnimations
//
//  Created by xiabob on 2017/12/18.
//  Copyright © 2017年 xiabob. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (XBAnimation)

#pragma mark - Run Animation

- (void)runAnimation:(CAAnimation *)animation;
- (void)runAnimation:(CAAnimation *)animation completion:(void (^)(void))block;
- (void)runAnimation:(CAAnimation *)animation withKey:(NSString *)key;
- (void)runAnimation:(CAAnimation *)animation withKey:(NSString *)key completion:(void (^)(void))block;


#pragma mark - Remove Animation

- (void)removeAnimationForKey:(NSString *)key;
- (void)removeAllAnimations;


#pragma mark - Utils

- (BOOL)hasAnimations;
- (nullable CAAnimation *)animationForKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END

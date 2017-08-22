//
//  XBAnimationFactory.h
//  XBAnimations
//
//  Created by xiabob on 2017/8/4.
//  Copyright © 2017年 xiabob. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface XBAnimationFactory : NSObject


/**
 jelly shake animation

 @param bounds view's bounds
 @return animation object
 */
+ (CAAnimation *)jellyShake:(CGRect)bounds;

/**
 jelly jump animation

 @param bounds view's bounds
 @return animation object
 */
+ (CAAnimation *)jellyJump:(CGRect)bounds;



/**
 shake from left side and right side

 @param maxOffset max side offset
 @return animation object
 */
+ (CAAnimation *)sideShake:(CGFloat)maxOffset;


/**
 jelly jump to display at screen

 @return animation object
 */
+ (CAAnimation *)jelleyJumpDisplayAnimation;

+ (CAAnimation *)energyMovingAnimationFromPositon:(CGPoint)fromPosition toPosition:(CGPoint)toPosition;

@end

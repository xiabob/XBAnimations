//
//  XBAnimation.h
//  XBAnimations
//
//  Created by xiabob on 2017/12/18.
//  Copyright © 2017年 xiabob. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface XBAnimation : NSObject

#pragma mark - Move

+ (CAAnimation *)moveBy:(CGPoint)delta duration:(NSTimeInterval)duration ;
+ (CAAnimation *)moveByX:(CGFloat)deltaX y:(CGFloat)deltaY duration:(NSTimeInterval)duration;
+ (CAAnimation *)moveTo:(CGPoint)location duration:(NSTimeInterval)duration;
+ (CAAnimation *)moveToX:(CGFloat)x duration:(NSTimeInterval)duration;
+ (CAAnimation *)moveToY:(CGFloat)y duration:(NSTimeInterval)duration;


#pragma mark - Rotate

+ (CAAnimation *)rotateByAngle:(CGFloat)radians duration:(NSTimeInterval)duration;
+ (CAAnimation *)rotateToAngle:(CGFloat)radians duration:(NSTimeInterval)duration;


#pragma mark - Resize

+ (CAAnimation *)resizeByWidth:(CGFloat)width height:(CGFloat)height duration:(NSTimeInterval)duration;
+ (CAAnimation *)resizeToWidth:(CGFloat)width height:(CGFloat)height duration:(NSTimeInterval)duration;
+ (CAAnimation *)resizeToWidth:(CGFloat)width duration:(NSTimeInterval)duration;
+ (CAAnimation *)resizeToHeight:(CGFloat)height duration:(NSTimeInterval)duration;


#pragma mark - Scale

+ (CAAnimation *)scaleBy:(CGFloat)scale duration:(NSTimeInterval)duration;
+ (CAAnimation *)scaleXBy:(CGFloat)xScale y:(CGFloat)yScale duration:(NSTimeInterval)duration;
+ (CAAnimation *)scaleTo:(CGFloat)scale duration:(NSTimeInterval)duration;
+ (CAAnimation *)scaleXTo:(CGFloat)xScale y:(CGFloat)yScale duration:(NSTimeInterval)duration;
+ (CAAnimation *)scaleXTo:(CGFloat)scale duration:(NSTimeInterval)duration;
+ (CAAnimation *)scaleYTo:(CGFloat)scale duration:(NSTimeInterval)duration;


#pragma mark - Alpha

+ (CAAnimation *)fadeInWithDuration:(NSTimeInterval)duration;
+ (CAAnimation *)fadeOutWithDuration:(NSTimeInterval)duration;
+ (CAAnimation *)fadeAlphaBy:(CGFloat)factor duration:(NSTimeInterval)duration;
+ (CAAnimation *)fadeAlphaTo:(CGFloat)alpha duration:(NSTimeInterval)duration;

+ (CAAnimation *)hide;
+ (CAAnimation *)unhide;


#pragma mark - Path

+ (CAAnimation *)followPath:(CGPathRef)path duration:(NSTimeInterval)duration;
+ (CAAnimation *)followPath:(CGPathRef)path asOffset:(BOOL)offset orientToPath:(BOOL)orient duration:(NSTimeInterval)duration;

#pragma mark - Contents

+ (CAAnimation *)changeContentsTo:(id)contents duration:(NSTimeInterval)duration;
+ (CAAnimation *)changeImageTo:(UIImage *)image duration:(NSTimeInterval)duration; //only for UIImageView


#pragma mark - Utils

+ (CAAnimation *)sequence:(NSArray<CAAnimation*> *)animations;
+ (CAAnimation *)group:(NSArray<CAAnimation*> *)animations ;

+ (CAAnimation *)repeatAction:(CAAnimation *)animation count:(NSUInteger)count;
+ (CAAnimation *)repeatActionForever:(CAAnimation *)animation;

+ (CAAnimation *)waitForDuration:(NSTimeInterval)duration;
+ (CAAnimation *)waitForDuration:(NSTimeInterval)duration withRange:(NSTimeInterval)durationRange;

@end

NS_ASSUME_NONNULL_END

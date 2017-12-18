//
//  XBAnimation.m
//  XBAnimations
//
//  Created by xiabob on 2017/12/18.
//  Copyright © 2017年 xiabob. All rights reserved.
//
// https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/CoreAnimation_guide/Key-ValueCodingExtensions/Key-ValueCodingExtensions.html
//

#import "XBAnimation.h"
#import <UIKit/UIKit.h>

@implementation XBAnimation

#pragma mark - Move

+ (CAAnimation *)moveBy:(CGPoint)delta duration:(NSTimeInterval)duration {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"position"];
    animation.byValue = [NSValue valueWithCGPoint:delta];
    animation.duration = duration;
    animation.repeatCount = 1;
    
    return animation;
}

+ (CAAnimation *)moveByX:(CGFloat)deltaX y:(CGFloat)deltaY duration:(NSTimeInterval)duration {
    return [self moveBy:CGPointMake(deltaX, deltaY) duration:duration];
}

+ (CAAnimation *)moveTo:(CGPoint)location duration:(NSTimeInterval)duration {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"position"];
    animation.toValue = [NSValue valueWithCGPoint:location];
    animation.duration = duration;
    animation.repeatCount = 1;
    
    return animation;
}

+ (CAAnimation *)moveToX:(CGFloat)x duration:(NSTimeInterval)duration {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"position.x"];
    animation.toValue = @(x);
    animation.duration = duration;
    animation.repeatCount = 1;
    
    return animation;
}

+ (CAAnimation *)moveToY:(CGFloat)y duration:(NSTimeInterval)duration {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"position.y"];
    animation.toValue = @(y);
    animation.duration = duration;
    animation.repeatCount = 1;
    
    return animation;
}


#pragma mark - Rotate

+ (CAAnimation *)rotateByAngle:(CGFloat)radians duration:(NSTimeInterval)duration {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    animation.byValue = @(radians);
    animation.duration = duration;
    animation.repeatCount = 1;
    
    return animation;
}

+ (CAAnimation *)rotateToAngle:(CGFloat)radians duration:(NSTimeInterval)duration {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    animation.toValue = @(radians);
    animation.duration = duration;
    animation.repeatCount = 1;
    
    return animation;
}


#pragma mark - Resize

+ (CAAnimation *)resizeByWidth:(CGFloat)width height:(CGFloat)height duration:(NSTimeInterval)duration {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"bounds.size"];
    animation.byValue = [NSValue valueWithCGSize:CGSizeMake(width, height)];
    animation.duration = duration;
    animation.repeatCount = 1;
    
    return animation;
}

+ (CAAnimation *)resizeToWidth:(CGFloat)width height:(CGFloat)height duration:(NSTimeInterval)duration {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"bounds.size"];
    animation.toValue = [NSValue valueWithCGSize:CGSizeMake(width, height)];
    animation.duration = duration;
    animation.repeatCount = 1;
    
    return animation;
}

+ (CAAnimation *)resizeToWidth:(CGFloat)width duration:(NSTimeInterval)duration {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"bounds.size.width"];
    animation.toValue = @(width);
    animation.duration = duration;
    animation.repeatCount = 1;
    
    return animation;
}

+ (CAAnimation *)resizeToHeight:(CGFloat)height duration:(NSTimeInterval)duration {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"bounds.size.height"];
    animation.toValue = @(height);
    animation.duration = duration;
    animation.repeatCount = 1;
    
    return animation;
}


#pragma mark - Scale

+ (CAAnimation *)scaleBy:(CGFloat)scale duration:(NSTimeInterval)duration {
    return [self scaleXBy:scale y:scale duration:duration];
}

+ (CAAnimation *)scaleXBy:(CGFloat)xScale y:(CGFloat)yScale duration:(NSTimeInterval)duration {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform"];
    animation.byValue = [NSValue valueWithCATransform3D:CATransform3DMakeScale(xScale, yScale, 1)];
    animation.duration = duration;
    animation.repeatCount = 1;
    
    return animation;
}

+ (CAAnimation *)scaleTo:(CGFloat)scale duration:(NSTimeInterval)duration {
    return [self scaleXTo:scale y:scale duration:duration];
}

+ (CAAnimation *)scaleXTo:(CGFloat)xScale y:(CGFloat)yScale duration:(NSTimeInterval)duration {
    CAAnimation *animation_1 = [self scaleXTo:xScale duration:duration];
    CAAnimation *animation_2 = [self scaleYTo:yScale duration:duration];
    return [self group:@[animation_1, animation_2]];
}

+ (CAAnimation *)scaleXTo:(CGFloat)scale duration:(NSTimeInterval)duration {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale.x"];
    animation.toValue = @(scale);
    animation.duration = duration;
    animation.repeatCount = 1;
    
    return animation;
}

+ (CAAnimation *)scaleYTo:(CGFloat)scale duration:(NSTimeInterval)duration {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale.y"];
    animation.toValue = @(scale);
    animation.duration = duration;
    animation.repeatCount = 1;
    
    return animation;
}


#pragma mark - Alpha

+ (CAAnimation *)fadeInWithDuration:(NSTimeInterval)duration {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    animation.toValue = @(1);
    animation.duration = duration;
    animation.repeatCount = 1;
    
    return animation;
}

+ (CAAnimation *)fadeOutWithDuration:(NSTimeInterval)duration {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    animation.toValue = @(0);
    animation.duration = duration;
    animation.repeatCount = 1;
    
    return animation;
}

+ (CAAnimation *)fadeAlphaBy:(CGFloat)factor duration:(NSTimeInterval)duration {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    animation.byValue = @(factor);
    animation.duration = duration;
    animation.repeatCount = 1;
    
    return animation;
}

+ (CAAnimation *)fadeAlphaTo:(CGFloat)alpha duration:(NSTimeInterval)duration {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"opacity"];
    animation.toValue = @(alpha);
    animation.duration = duration;
    animation.repeatCount = 1;
    
    return animation;
}

+ (CAAnimation *)hide {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"hidden"];
    animation.toValue = @(YES);
    animation.duration = 0.0;
    animation.repeatCount = 1;
    
    return animation;
}

+ (CAAnimation *)unhide {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"hidden"];
    animation.toValue = @(NO);
    animation.duration = 0.0;
    animation.repeatCount = 1;
    
    return animation;
}


#pragma mark - Path

+ (CAAnimation *)followPath:(CGPathRef)path duration:(NSTimeInterval)duration {
    return [self followPath:path asOffset:YES orientToPath:YES duration:duration];
}

+ (CAAnimation *)followPath:(CGPathRef)path asOffset:(BOOL)offset orientToPath:(BOOL)orient duration:(NSTimeInterval)duration {
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animation];
    animation.keyPath = @"position";
    animation.path = path;
    animation.duration = duration;
    animation.additive = offset;
    animation.repeatCount = 1;
    animation.calculationMode = kCAAnimationPaced;
    animation.rotationMode = orient ? kCAAnimationRotateAuto : nil;
    
    return animation;
}


#pragma mark - Contents

+ (CAAnimation *)changeContentsTo:(id)contents duration:(NSTimeInterval)duration {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"contents"];
    animation.toValue = contents;
    animation.duration = duration;
    animation.repeatCount = 1;
    
    return animation;
}

+ (CAAnimation *)changeImageTo:(UIImage *)image duration:(NSTimeInterval)duration {
    id contents = (__bridge id)image.CGImage;
    return [self changeContentsTo:contents duration:duration];
}

#pragma mark - Utils

+ (CAAnimation *)sequence:(NSArray<CAAnimation*> *)animations {
    CAAnimationGroup *group = [[CAAnimationGroup alloc] init];
    
    __block NSTimeInterval beginTime = 0.0;
    [animations enumerateObjectsUsingBlock:^(CAAnimation * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        obj.beginTime = beginTime;
        beginTime += obj.duration;
        
        obj.fillMode = kCAFillModeForwards;
        obj.removedOnCompletion = NO;
    }];
    group.duration = animations.lastObject.beginTime + animations.lastObject.duration;
    group.animations = animations;
    group.repeatCount = 1;
    
    return group;
}

+ (CAAnimation *)group:(NSArray<CAAnimation*> *)animations {
    CAAnimationGroup *group = [[CAAnimationGroup alloc] init];
    
    __block NSTimeInterval duration = 0.0;
    [animations enumerateObjectsUsingBlock:^(CAAnimation * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSTimeInterval totalTime = obj.duration;
        if (duration < totalTime) {
            duration = totalTime;
        }
        
        obj.fillMode = kCAFillModeForwards;
        obj.removedOnCompletion = NO;
    }];
    group.duration = duration;
    group.animations = animations;
    group.repeatCount = 1;
    
    return group;
}

+ (CAAnimation *)repeatAction:(CAAnimation *)animation count:(NSUInteger)count {
    animation.repeatCount = count;
    return [animation copy];
}

+ (CAAnimation *)repeatActionForever:(CAAnimation *)animation {
    animation.repeatCount = INFINITY;
    return [animation copy];
}

+ (CAAnimation *)waitForDuration:(NSTimeInterval)duration {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"zPosition"];
    animation.byValue = @(0);
    animation.duration = duration;
    
    return animation;
}

+ (CAAnimation *)waitForDuration:(NSTimeInterval)duration withRange:(NSTimeInterval)durationRange {
    NSTimeInterval newDuration = (duration - durationRange / 2) + (arc4random_uniform(100) + 1) / 100.0 * durationRange;
    return [self waitForDuration:newDuration];
}

@end

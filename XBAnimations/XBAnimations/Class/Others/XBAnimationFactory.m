//
//  XBAnimationFactory.m
//  XBAnimations
//
//  Created by xiabob on 2017/8/4.
//  Copyright © 2017年 xiabob. All rights reserved.
//

#import "XBAnimationFactory.h"

@implementation XBAnimationFactory

+ (CAAnimation *)jellyShake:(CGRect)bounds {
    CGFloat animationTime = 1.5;
    
    CGFloat sx = 1, sy = 1, sz = 1, tx = 0, ty = 0, tz = 0;
    NSValue *value0 = [NSValue valueWithCATransform3D:CATransform3DMakeScale(sx, sy, sz)];
    
    sx = 1.2;
    sy = 0.9;
    ty = (1 - sy) * CGRectGetHeight(bounds) / 2;
    CATransform3D scale1 = CATransform3DMakeScale(sx, sy, sz);
    CATransform3D move1 = CATransform3DMakeTranslation(tx, ty, tz);
    NSValue *value1 = [NSValue valueWithCATransform3D:CATransform3DConcat(scale1, move1)];
    
    sx = 0.9;
    sy = 1.05;
    ty = (1 - sy) * CGRectGetHeight(bounds) / 2;
    CATransform3D scale2 = CATransform3DMakeScale(sx, sy, sz);
    CATransform3D move2 = CATransform3DMakeTranslation(tx, ty, tz);
    NSValue *value2 = [NSValue valueWithCATransform3D:CATransform3DConcat(scale2, move2)];
    
    sx = 1.05;
    sy = 0.975;
    ty = (1 - sy) * CGRectGetHeight(bounds) / 2;
    CATransform3D scale3 = CATransform3DMakeScale(sx, sy, sz);
    CATransform3D move3 = CATransform3DMakeTranslation(tx, ty, tz);
    NSValue *value3 = [NSValue valueWithCATransform3D:CATransform3DConcat(scale3, move3)];
    
    sx = 0.975;
    sy = 1.015;
    ty = (1 - sy) * CGRectGetHeight(bounds) / 2;
    CATransform3D scale4 = CATransform3DMakeScale(sx, sy, sz);
    CATransform3D move4 = CATransform3DMakeTranslation(tx, ty, tz);
    NSValue *value4 = [NSValue valueWithCATransform3D:CATransform3DConcat(scale4, move4)];
    
    sx = 1.015;
    sy = 0.995;
    ty = (1 - sy) * CGRectGetHeight(bounds) / 2;
    CATransform3D scale5 = CATransform3DMakeScale(sx, sy, sz);
    CATransform3D move5 = CATransform3DMakeTranslation(tx, ty, tz);
    NSValue *value5 = [NSValue valueWithCATransform3D:CATransform3DConcat(scale5, move5)];
    
    sx = 0.985;
    sy = 1.005;
    ty = (1 - sy) * CGRectGetHeight(bounds) / 2;
    CATransform3D scale6 = CATransform3DMakeScale(sx, sy, sz);
    CATransform3D move6 = CATransform3DMakeTranslation(tx, ty, tz);
    NSValue *value6 = [NSValue valueWithCATransform3D:CATransform3DConcat(scale6, move6)];
    
    sx = 1;
    sy = 1;
    ty = 0;
    CATransform3D scale7 = CATransform3DMakeScale(sx, sy, sz);
    CATransform3D move7 = CATransform3DMakeTranslation(tx, ty, tz);
    NSValue *value7 = [NSValue valueWithCATransform3D:CATransform3DConcat(scale7, move7)];
    
    
    CAKeyframeAnimation *jellyShake = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    
    jellyShake.values = @[value0, value1, value2, value3, value4, value5, value6, value7, value0];
    jellyShake.keyTimes = @[@0, @0.25, @0.4, @0.5, @0.6, @0.7, @0.8, @0.9, @1];
    jellyShake.duration = animationTime;
    jellyShake.repeatCount = INFINITY;
    jellyShake.removedOnCompletion = NO;

    return jellyShake;
}


+ (CAAnimation *)jellyJump:(CGRect)bounds {
    CGFloat floatKey = arc4random() % 9 * 0.025 - 0.1;
    
    CGFloat animationKeyTime = 0.8 + floatKey;
    
    NSArray *animationKeyTimes = @[@(0), @(0.246 * animationKeyTime), @(0.492 * animationKeyTime), @(0.656 * animationKeyTime), @(0.738 * animationKeyTime), @(0.869 * animationKeyTime), @(1 * animationKeyTime)];
    CGFloat wholeDuration = 1.f / animationKeyTime;
    
    CGFloat sx = 1;
    CGFloat sy = 1;
    CGFloat sz = 1;
    
    CGFloat tx = 0;
    CGFloat ty = 0;
    CGFloat tz = 0;
    
    CAKeyframeAnimation *jellyJump = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    
    NSValue *value0 = [NSValue valueWithCATransform3D:CATransform3DMakeScale(sx, sy, sz)];
    
    CAMediaTimingFunction *function0 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    
    sx = 1.1;
    sy = 0.9;
    ty = (1 - sy) * CGRectGetHeight(bounds) / 2;
    CATransform3D scale1 = CATransform3DMakeScale(sx, sy, sz);
    CATransform3D move1 = CATransform3DMakeTranslation(tx, ty, tz);
    NSValue *value1 = [NSValue valueWithCATransform3D:CATransform3DConcat(scale1, move1)];
    
    CAMediaTimingFunction *function1 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    
    sx = 0.95;
    sy = 1;
    ty = -CGRectGetHeight(bounds) * 0.25;
    CATransform3D scale2 = CATransform3DMakeScale(sx, sy, sz);
    CATransform3D move2 = CATransform3DMakeTranslation(tx, ty, tz);
    NSValue *value2 = [NSValue valueWithCATransform3D:CATransform3DConcat(scale2, move2)];
    
    CAMediaTimingFunction *function2 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    
    CATransform3D scale3 = CATransform3DMakeScale(sx, sy, sz);
    CATransform3D move3 = CATransform3DMakeTranslation(tx, ty, tz);
    NSValue *value3 = [NSValue valueWithCATransform3D:CATransform3DConcat(scale3, move3)];
    
    CAMediaTimingFunction *function3 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    
    sx = 1;
    sy = 1;
    ty = 0;
    CATransform3D scale4 = CATransform3DMakeScale(sx, sy, sz);
    CATransform3D move4 = CATransform3DMakeTranslation(tx, ty, tz);
    NSValue *value4 = [NSValue valueWithCATransform3D:CATransform3DConcat(scale4, move4)];
    
    CAMediaTimingFunction *function4 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    
    sx = 1.1;
    sy = 0.9;
    ty = (1 - sy) * CGRectGetHeight(bounds) / 2;
    CATransform3D scale5 = CATransform3DMakeScale(sx, sy, sz);
    CATransform3D move5 = CATransform3DMakeTranslation(tx, ty, tz);
    NSValue *value5 = [NSValue valueWithCATransform3D:CATransform3DConcat(scale5, move5)];
    
    CAMediaTimingFunction *function5 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    
    sx = 1;
    sy = 1;
    ty = 0;
    CATransform3D scale6 = CATransform3DMakeScale(sx, sy, sz);
    CATransform3D move6 = CATransform3DMakeTranslation(tx, ty, tz);
    NSValue *value6 = [NSValue valueWithCATransform3D:CATransform3DConcat(scale6, move6)];
    
    CAMediaTimingFunction *function6 = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    
    CATransform3D scale7 = CATransform3DMakeScale(sx, sy, sz);
    CATransform3D move7 = CATransform3DMakeTranslation(tx, ty, tz);
    NSValue *value7 = [NSValue valueWithCATransform3D:CATransform3DConcat(scale7, move7)];
    
    
    jellyJump.values = @[value0, value1, value2, value3, value4, value5, value6, value7];
    jellyJump.keyTimes = @[animationKeyTimes[0], animationKeyTimes[1], animationKeyTimes[2], animationKeyTimes[3], animationKeyTimes[4], animationKeyTimes[5], animationKeyTimes[6], @(1)];
    jellyJump.timingFunctions = @[function0, function1, function2, function3, function4, function5, function6];
    
    jellyJump.duration = wholeDuration;
    jellyJump.fillMode = kCAFillModeBackwards;
    jellyJump.removedOnCompletion = NO;
    jellyJump.repeatCount = INFINITY;

    return jellyJump;
}

+ (CAAnimation *)sideShake:(CGFloat)maxOffset {
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animation];
    animation.keyPath = @"position.x";
    animation.values = @[@0, @(maxOffset), @(-maxOffset), @(maxOffset), @0];
    animation.keyTimes = @[@0, @(1 / 6.0), @(3 / 6.0), @(5 / 6.0), @1];
    animation.duration = 4;
    animation.additive = YES;
    
    return animation;
}

+ (CAAnimation *)jelleyJumpDisplayAnimation {
    CGFloat duration = 1 / 3.0;
    
    CAAnimationGroup *group = [CAAnimationGroup animation];
    group.removedOnCompletion = NO;
    group.fillMode = kCAFillModeForwards;
    
    CABasicAnimation *alphaAni = [CABasicAnimation animationWithKeyPath:@"opacity"];
    alphaAni.removedOnCompletion = NO;
    alphaAni.fillMode = kCAFillModeForwards;
    alphaAni.duration = duration;
    alphaAni.fromValue = @(0.0);
    alphaAni.toValue = @(1.0);
    alphaAni.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    
    CABasicAnimation *scaleAni = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    scaleAni.removedOnCompletion = NO;
    scaleAni.fillMode = kCAFillModeForwards;
    scaleAni.duration = duration;
    scaleAni.fromValue = @(0.1);
    scaleAni.toValue = @(1.0);
    scaleAni.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    
    CABasicAnimation *upAnimation = [CABasicAnimation animationWithKeyPath:@"position.y"];
    upAnimation.removedOnCompletion = NO;
    upAnimation.fillMode = kCAFillModeForwards;
    upAnimation.duration = duration;
    upAnimation.fromValue = @(250);
    upAnimation.toValue = @(-80);
    upAnimation.additive = YES;
    upAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    
    CAKeyframeAnimation *downAni = [CAKeyframeAnimation animationWithKeyPath:@"position.y"];
    downAni.removedOnCompletion = NO;
    downAni.fillMode = kCAFillModeForwards;
    downAni.beginTime = duration;
    downAni.duration = 0.1;
    downAni.values = @[@(0),@(15),@(80)];
    downAni.keyTimes = @[@(0.0),@(0.7),@(1.0)];
    downAni.additive = YES;
    downAni.timingFunctions = @[[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn],[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear]];
    
    duration += 0.1;
    
    CAKeyframeAnimation *shakeAni = [CAKeyframeAnimation animationWithKeyPath:@"position.y"];
    shakeAni.removedOnCompletion = NO;
    shakeAni.fillMode = kCAFillModeForwards;
    shakeAni.beginTime = duration;
    shakeAni.duration = 0.15;
    shakeAni.values = @[@(0), @(-15), @(-15), @(0)];
    shakeAni.keyTimes = @[@(0.0), @(2/7.0), @(5/7.0), @(1.0)];
    shakeAni.additive = YES;
    
    CATransform3D scale1 = CATransform3DMakeScale(1.06, 0.95, 1.0);
    CATransform3D scale2 = CATransform3DMakeScale(0.96, 1.05, 1.0);
    
    CAKeyframeAnimation *jellyAni = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    jellyAni.removedOnCompletion = NO;
    jellyAni.fillMode = kCAFillModeForwards;
    jellyAni.beginTime = duration;
    jellyAni.duration = 0.15;
    jellyAni.values = @[[NSValue valueWithCATransform3D:scale1], [NSValue valueWithCATransform3D:scale2], [NSValue valueWithCATransform3D:scale2], [NSValue valueWithCATransform3D:CATransform3DIdentity]];
    jellyAni.keyTimes = @[@(0.0),@(2/7.0),@(5/7.0),@(1.0)];
    
    duration += 0.15;
    group.animations = @[alphaAni,scaleAni,upAnimation,downAni,shakeAni,jellyAni];
    group.duration = duration;
    
    return group;
}

+ (CAAnimation *)energyMovingAnimationFromPositon:(CGPoint)fromPosition toPosition:(CGPoint)toPosition {
    CAKeyframeAnimation *scale1 = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
    scale1.values = @[@1, @1.4, @1];
    scale1.keyTimes = @[@(0), @(1/3.0), @(2/3.0), @(1.0)];
    scale1.duration = 0.45;
    scale1.removedOnCompletion = NO;
    scale1.fillMode = kCAFillModeForwards;
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:fromPosition];
    //http://cubic-bezier.com/#.15,.5,.5,.99
    CGPoint control_1 = [self controlPointFrom:fromPosition to:toPosition interpolation:CGPointMake(0.60, 0.15)];
    CGPoint control_2 = [self controlPointFrom:fromPosition to:toPosition interpolation:CGPointMake(1.00, 0.50)];
    [path addCurveToPoint:toPosition controlPoint1:control_1 controlPoint2:control_2];
    CAKeyframeAnimation *orbit = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    orbit.beginTime = scale1.duration;
    orbit.path = path.CGPath;
    orbit.duration = 0.75;
    orbit.removedOnCompletion = NO;
    orbit.fillMode = kCAFillModeForwards;
    orbit.calculationMode = kCAAnimationPaced;
    orbit.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    CAKeyframeAnimation *scale2 = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
    scale2.beginTime = orbit.beginTime + orbit.duration;
    scale2.values = @[@1, @1.4, @1];
    scale2.keyTimes = @[@(0), @(1/3.0), @(2/3.0), @(1.0)];
    scale2.duration = 0.45;
    scale2.removedOnCompletion = NO;
    scale2.fillMode = kCAFillModeForwards;
    
    CAAnimationGroup *group = [CAAnimationGroup animation];
    group.duration = scale2.beginTime + scale2.duration;
    group.repeatCount = 1;
    group.animations = @[scale1, orbit, scale2];
    group.removedOnCompletion = NO;
    group.fillMode = kCAFillModeForwards;
    
    return group;
}


#pragma mark - Private

+ (CGPoint)controlPointFrom:(CGPoint)from to:(CGPoint)to interpolation:(CGPoint)interpolation {
    CGFloat x = from.x + (to.x - from.x) * interpolation.x;
    CGFloat y = from.y + (to.y - from.y) * interpolation.y;
    return CGPointMake(x, y);
}

@end

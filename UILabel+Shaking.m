//
//  UILabel+Shaking.m
//  clickZan
//
//  Created by LH'sMacbook on 14-9-10.
//  Copyright (c) 2014年 xian.song. All rights reserved.
//

#import "UILabel+Shaking.h"

@implementation UILabel (Shaking)
- (void)beginShake
{
    CABasicAnimation *shake = [CABasicAnimation animationWithKeyPath:@"position"];
    [shake setDuration:0.1];
    [shake setRepeatCount:3];
    [shake setAutoreverses:YES];
    [shake setFromValue:[NSValue valueWithCGPoint:
                         CGPointMake(self.center.x + 5,self.center.y)]];
    [shake setToValue:[NSValue valueWithCGPoint:
                       CGPointMake(self.center.x - 5, self.center.y)]];
    [self.layer addAnimation:shake forKey:@"SHAKE"];
    
    
    
    //    UIBezierPath *movePath = [UIBezierPath bezierPath];
    //    [movePath moveToPoint:CGPointMake(self.center.x, self.center.y)];
    //    [movePath addLineToPoint:CGPointMake(self.center.x - 5, self.center.y)];
    //    [movePath addLineToPoint:CGPointMake(self.center.x + 5, self.center.y)];
    //
    //    CAKeyframeAnimation *moveAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    //    [moveAnim setDuration:0.1];
    //    [moveAnim setRepeatCount:3];
    //    moveAnim.path = movePath.CGPath;
    //    moveAnim.removedOnCompletion = YES;
    //    [self.layer addAnimation:moveAnim forKey:nil];
}

- (void)beginScale
{
    CAKeyframeAnimation *scale = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale"];
    scale.values = @[@(0.8),@(0.9),@(1.1)];
    scale.keyTimes = @[@(0.0),@(0.4),@(0.8)];
    scale.calculationMode = kCAAnimationLinear;
    
    [self.layer addAnimation:scale forKey:@"SHOW"];
    
}
@end

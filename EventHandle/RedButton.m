//
//  RedButton.m
//  InterView
//
//  Created by 李一平 on 2018/7/5.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import "RedButton.h"

@implementation RedButton


- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    if ([self pointInside:point withEvent:event]) {
        return self;
    } else {
        return [super hitTest:point withEvent:event];
    }
    
}

-  (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {

    CGRect bounds = self.bounds;
    bounds = CGRectInset(bounds, -20, -20);//扩大点击范围

    return CGRectContainsPoint(bounds, point);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"red");
}

@end

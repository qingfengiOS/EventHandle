//
//  GrayButton.m
//  InterView
//
//  Created by 李一平 on 2018/7/5.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import "GrayButton.h"

@implementation GrayButton

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {

    if ([self pointInside:point withEvent:event]) {
        if (point.x < 50 && point.y < 50) {//如果点在左上角，把事件交出去（到达事件穿透的目的)）
            return nil;
        } else {
            return self;
        }
        return nil;
    } else {
        return nil;
    }
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"gary");
}




@end

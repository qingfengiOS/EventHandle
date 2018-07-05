//
//  ViewController.m
//  EventHandle
//
//  Created by 李一平 on 2018/7/5.
//  Copyright © 2018年 qingfengiOS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}


/*
 care：
 1、事件传递会走对应View（Button）的touchBegin
 2、如果没有实现对应btn的touchBegin才会走到这里，Event（即：放开RedButton和GrayButton中的touchBegin，这里不会执行）
 */
- (IBAction)redAction:(id)sender {
    NSLog(@"%s",__func__);
}
- (IBAction)grayAction:(id)sender {
    NSLog(@"%s",__func__);
}





@end

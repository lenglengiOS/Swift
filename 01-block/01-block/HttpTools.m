//
//  HttpTools.m
//  01-block
//
//  Created by 冷洪林 on 2017/5/31.
//  Copyright © 2017年 冷洪林. All rights reserved.
//

#import "HttpTools.h"

@implementation HttpTools

- (void)loadData:(void (^)(NSString *jsonData))callback
{
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"发送网络请求 %@",[NSThread currentThread]);
        
        dispatch_async(dispatch_get_main_queue(), ^{
            NSLog(@"请求数据成功 %@",[NSThread currentThread]);
            callback(@"json数据");
        });
    });
}

@end

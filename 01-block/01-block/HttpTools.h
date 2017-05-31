//
//  HttpTools.h
//  01-block
//
//  Created by 冷洪林 on 2017/5/31.
//  Copyright © 2017年 冷洪林. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HttpTools : NSObject

- (void)loadData:(void(^)(NSString *jsonData))callback;

@end

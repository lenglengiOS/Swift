//
//  ViewController.m
//  01-block
//
//  Created by 冷洪林 on 2017/5/31.
//  Copyright © 2017年 冷洪林. All rights reserved.
//

#import "ViewController.h"
#import "HttpTools.h"

@interface ViewController ()

@property(nonatomic, strong) HttpTools *tools;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tools = [[HttpTools alloc] init];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.tools loadData:^(NSString *jsonData) {
        NSLog(@"在ViewController请求数据成功,返回的数据为: %@", jsonData);
        __weak ViewController *weakself = self;
        weakself.view.backgroundColor = [UIColor redColor];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

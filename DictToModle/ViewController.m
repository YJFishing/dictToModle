//
//  ViewController.m
//  DictToModle
//
//  Created by 包宇津 on 2017/9/2.
//  Copyright © 2017年 baoyujin. All rights reserved.
//

#import "ViewController.h"
#import "weibo.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self autoGenerateProperty];
    [self dictToModel];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)autoGenerateProperty {
    //解析Plist
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"weibo" ofType:@"plist"];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:filePath];
    NSArray *dictArr = dict[@"weibo"];
    [NSObject createPropertyCodeWidhDict:dictArr[0]];
}

- (void)dictToModel {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"weibo" ofType:@"plist"];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:filePath];
    NSArray *dictArr = dict[@"weibo"];
    
    NSMutableArray *weiboArray = [NSMutableArray array];
    for (NSDictionary *dict in dictArr) {
        weibo *wb = [weibo modelWithDict:dict];
        [weiboArray addObject:wb];
    }
    NSLog(@"%@",weiboArray);
}
@end

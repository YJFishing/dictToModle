//
//  weibo.m
//  DictToModle
//
//  Created by 包宇津 on 2017/9/2.
//  Copyright © 2017年 baoyujin. All rights reserved.
//

#import "weibo.h"

@implementation weibo
+ (weibo *)weiboWithDict:(NSDictionary *)dict {
    weibo *weibo = [[self alloc] init];
    [weibo setValuesForKeysWithDictionary:dict];
    return weibo;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    if ([key isEqualToString:@"id"]) {
        _ID = [value integerValue];
    }
    NSLog(@"%@ %@",key,value);
}
@end
// 解决KVC报错
//- (void)setValue:(id)value forUndefinedKey:(NSString *)key
//{
//    if ([key isEqualToString:@"id"]) {
//        _ID = [value integerValue];
//    }
//    // key:没有找到key
//    // value:没有找到key对应的值
//    NSLog(@"%@ %@",key,value);
//}

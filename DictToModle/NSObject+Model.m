//
//  NSObject+Model.m
//  DictToModle
//
//  Created by 包宇津 on 2017/9/2.
//  Copyright © 2017年 baoyujin. All rights reserved.
//

#import "NSObject+Model.h"
#import <objc/message.h>
@implementation NSObject (Model)
+ (instancetype)modelWithDict:(NSDictionary *)dict {
    //创建对应类的对象
    id objc = [[self alloc] init];
    unsigned int count = 0;
    Ivar *ivarList = class_copyIvarList(self, &count);
    for (int i = 0; i < count; i++) {
        //获取成员属性
        Ivar ivar = ivarList[i];
        //获取成员名
        NSString *propertyName = [NSString stringWithUTF8String:ivar_getName(ivar)];
        //成员属性类型
        NSString *propertyType = [NSString stringWithUTF8String:ivar_getTypeEncoding(ivar)];
        //获取key
        NSString *key = [propertyName substringFromIndex:1];
        NSLog(@"propertyName = %@",propertyName);
        //获取字典的Value
        id value = dict[key];
        if (value) {
            [objc setValue:value forKey:key];
        }
    }
    return objc;
}

@end

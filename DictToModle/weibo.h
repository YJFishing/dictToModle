//
//  weibo.h
//  DictToModle
//
//  Created by 包宇津 on 2017/9/2.
//  Copyright © 2017年 baoyujin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface weibo : NSObject
@property (nonatomic, assign) NSInteger ID;

@property (nonatomic, copy) NSString *source;

@property (nonatomic, assign) int reposts_count;

@property (nonatomic, strong) NSArray *pic_urls;

@property (nonatomic, copy) NSString *created_at;

@property (nonatomic, assign) int attitudes_count;

@property (nonatomic, copy) NSString *idstr;

@property (nonatomic, copy) NSString *text;

@property (nonatomic, assign) int comments_count;

@property (nonatomic, strong) NSDictionary *user;
+ (weibo *)weiboWithDict:(NSDictionary *)dict;
@end
// 模型的属性名跟字典一一对应

//+ (__kindof weibo *)weiboWithDict:(NSDictionary *)dict;

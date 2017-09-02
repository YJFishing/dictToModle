//
//  NSObject+autoGenerateProperty.m
//  DictToModle
//
//  Created by 包宇津 on 2017/9/2.
//  Copyright © 2017年 baoyujin. All rights reserved.
//

#import "NSObject+autoGenerateProperty.h"

@implementation NSObject (autoGenerateProperty)
+ (void)createPropertyCodeWidhDict:(NSDictionary *)dict {
    NSMutableString *strM = [NSMutableString string];
    //便利字典
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull property, id  _Nonnull value, BOOL * _Nonnull stop) {
        NSLog(@"%@ %@",property,[value class]);
        NSString *code;
        if ([value isKindOfClass:NSClassFromString(@"__NSCFString")]) {
            
            code = [NSString stringWithFormat:@"@property (nonatomic, copy) NSString *%@;",property];
            
        }else if ([value isKindOfClass:NSClassFromString((@"__NSCFNumber"))]) {
            
            code = [NSString stringWithFormat:@"@property (nonatomic, assign) int %@;",property];
            
        }else if ([value isKindOfClass:NSClassFromString(@"__NSCFArray")]) {
            
            code = [NSString stringWithFormat:@"@property (nonatomic, strong) NSArray *%@;",property];
            
        }else if ([value isKindOfClass:NSClassFromString(@"__NSCFDictionary")]) {
            
            code = [NSString stringWithFormat:@"@property (nonatomic, strong) NSDictionary *%@;",property];
            
        }else if ([value isKindOfClass:NSClassFromString(@"__NSCFBoolean")]) {
            code = [NSString stringWithFormat:@"@property (nonatomic, assign) BOOL %@;",property];
        }
        [strM appendFormat:@"\n%@\n",code];
    }];
    
    NSLog(@"%@",strM);
}


@end

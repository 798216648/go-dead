//
//  Model.m
//  跳太平洋算了
//
//  Created by lanou on 16/3/11.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "Model.h"

@implementation Model

-(instancetype)initWithInfoDic:(NSDictionary *)dic
{
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}


//我就操了,就这破地方,
-(void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    
}

@end

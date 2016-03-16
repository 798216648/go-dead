//
//  Model.h
//  跳太平洋算了
//
//  Created by lanou on 16/3/11.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject

@property (nonatomic , copy)NSString *image;
@property (nonatomic , copy)NSString *pubDate;
@property (nonatomic , copy)NSString *title;
@property (nonatomic , retain)NSNumber *cmtCount;
@property (nonatomic , retain)NSNumber *imgCount;
@property (nonatomic , retain)NSNumber *seq;


@property (nonatomic , copy)NSString *imgUrls;
@property (nonatomic , copy)NSString *bigImage;
@property (nonatomic , copy)NSString *channelId;
@property (nonatomic , copy)NSString *idd;
@property (nonatomic , copy)NSString *summary;
@property (nonatomic , copy)NSString *url;
@property (nonatomic , retain)NSNumber *informationType;

-(instancetype)initWithInfoDic:(NSDictionary *)dic;


@end

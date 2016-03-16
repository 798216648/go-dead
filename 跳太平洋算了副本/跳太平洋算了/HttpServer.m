//
//  HttpServer.m
//  GET&POT
//
//  Created by lanou on 16/2/29.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "HttpServer.h"



@implementation HttpServer



+(HttpServer *)shareHttp
{
    static HttpServer *server = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        server = [[HttpServer alloc]init];
    });
    return server;
    
}


-(void)connectHttpWithUrl:(NSString *)url method:(Method)met body:(NSString *)body result:(dataBlock)block
{
    //转码,防止地址有中文
    NSString *encodeStr = [url stringByRemovingPercentEncoding];
    //创建URL
    NSURL *urlAddress = [NSURL URLWithString:encodeStr];
    //通过URL创建网络请求
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:urlAddress];
    
    //判断是否为POST
    if (met == POST) {
        //请求方式为POST,默认为GET
        [request setHTTPMethod:@"POST"];
        //设置body,并把body转换为2进制
        [request setHTTPBody:[body dataUsingEncoding:NSUTF8StringEncoding]];
    }
    
    
    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
        if (data) {
            id result = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
            block(result);
        }else{
            NSLog(@"请求失败");
        }
    }];
}



@end

//
//  HttpServer.h
//  GET&POT
//
//  Created by lanou on 16/2/29.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^dataBlock)(id result);

typedef enum httpMethod
{
    GET,
    POST
}Method;
@interface HttpServer : NSObject

+(HttpServer *)shareHttp;

-(void)connectHttpWithUrl:(NSString *)url method:(Method)met body:(NSString *)body result:(dataBlock)block;



@end

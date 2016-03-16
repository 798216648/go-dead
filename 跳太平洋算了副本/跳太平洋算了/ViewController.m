//
//  ViewController.m
//  跳太平洋算了
//
//  Created by lanou on 16/3/10.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "ViewController.h"
#import "Dao.h"
#import "Header.pch"
#import "mainView.h"
#import "HttpServer.h"
#import "lunboView.h"
@interface ViewController ()<UIScrollViewDelegate>
{
    UIScrollView *scroll;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    Dao *daohang = [[Dao alloc]initWithScroll:CGRectMake(0, 0, WIDTH, 64 )];
    [self.view addSubview:daohang];
    
    scroll = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 64, WIDTH, HEIGHT - 113)];
    [scroll setPagingEnabled:YES];
    [scroll setContentSize:CGSizeMake(WIDTH * 5, 0)];
    [scroll setDelegate:self];
    [self.view addSubview:scroll];
    
    [self GCD];

 

    
}
-(void)GCD
{
    dispatch_queue_t globalQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    //执行队列
    dispatch_async(globalQueue, ^{
        [[HttpServer shareHttp]connectHttpWithUrl:URL method:GET body:nil result:^(id result) {
            mainView *view = [[mainView alloc]initWithMainViewFrame:CGRectMake(0, 0, WIDTH, HEIGHT) result:result];
            [scroll addSubview:view];
        }];
    });
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

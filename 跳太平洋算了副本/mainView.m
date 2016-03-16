//
//  mainView.m
//  跳太平洋算了
//
//  Created by lanou on 16/3/10.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "mainView.h"
#import "Header.pch"
#import "lunboView.h"
#import "Model.h"
#import "mainTableViewCell.h"
#import "LunboCell.h"
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
@interface mainView()<UITableViewDataSource,UITableViewDelegate>

@end
@implementation mainView

-(instancetype)initWithMainViewFrame:(CGRect)frame result:(id)result
{
    self = [super initWithFrame:frame];
    if (self) {
        
        NSLog(@"2");
        UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0,SCREEN_WIDTH,SCREEN_HEIGHT - 113)  style:UITableViewStylePlain];
        [tableView setDelegate:self];
        [tableView setDataSource:self];
        [self addSubview:tableView];
        
        _result = result;
        
        _mainArray  = [NSMutableArray array];
        _topArray   = [NSMutableArray array];
        _topArray2  = [NSMutableArray array];   
        _underArray = [NSMutableArray array];
        
     

        [self GCD];
       
        
        
        
        
    }
    return self;
}

-(void)GCD{
    //执行队列
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{

        NSArray *array = [_result objectForKey:@"articleList"];
        for (NSDictionary *dic in array) {
            Model *model = [[Model alloc]initWithInfoDic:dic];
            [_mainArray addObject:model];
        }
        
        NSArray *array1 = [_result objectForKey:@"focus"];
        for (NSDictionary *dic in array1) {
            Model *model = [[Model alloc]initWithInfoDic:dic];
            [_topArray addObject:model.title];
            [_topArray2 addObject:model.image];
        }
 });
}


//每个section上面有多少个cell
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _mainArray.count + 1;
}

//每个cell有多高
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
 
    if (indexPath.row == 0) {
        return 230;
    }
 
        return 100;
    

}

//cell上面显示的内容
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        static NSString *ce = @"hehe";
        LunboCell *cell = [tableView dequeueReusableCellWithIdentifier:ce];
        if (!cell) {
            cell = [[LunboCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ce];
            lunboView *view = [[lunboView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 230) array1:_topArray array2:_topArray2];
            [cell addSubview:view];
        }
        return cell;
        
    }

    
        static NSString *cellid = @"liudao";
        mainTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellid];
        if (!cell) {
            cell = [[mainTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellid];
        }
        [cell getInfoCellofModel:[_mainArray objectAtIndex:indexPath.row - 1]];
        return cell;
    
    }
    
    
    
    

 


@end

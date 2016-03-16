//
//  mainView.h
//  跳太平洋算了
//
//  Created by lanou on 16/3/10.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface mainView : UIView

-(instancetype)initWithMainViewFrame:(CGRect)frame result:(id)result;

@property (nonatomic , strong)id result;
@property (nonatomic , strong)NSMutableArray *mainArray;
@property (nonatomic , strong)NSMutableArray *topArray;
@property (nonatomic , strong)NSMutableArray *topArray2;
@property (nonatomic , strong)NSMutableArray *underArray;
@end

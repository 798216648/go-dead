//
//  mainTableViewCell.h
//  跳太平洋算了
//
//  Created by lanou on 16/3/11.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Model.h"
@interface mainTableViewCell : UITableViewCell

@property (nonatomic , retain)UIImageView *littleImagel;
@property (nonatomic , retain)UILabel *titleLabel;
@property (nonatomic , retain)UILabel *timeLabel;
@property (nonatomic , retain)UILabel *cmtCountLabel;

-(void)getInfoCellofModel:(Model *)model;


@end

//
//  mainTableViewCell.m
//  跳太平洋算了
//
//  Created by lanou on 16/3/11.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "mainTableViewCell.h"
#import "Header.pch"
@implementation mainTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        _littleImagel = [[UIImageView alloc]initWithFrame:CGRectMake(10, 10, 95, 80)];
        [self.contentView addSubview:_littleImagel];
        
        _titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(120, 5, 240, 50)];
        [_titleLabel setFont:[UIFont systemFontOfSize:16]];
        [_titleLabel setTextColor:[UIColor blackColor]];
        [_titleLabel setNumberOfLines:2];
        [self.contentView addSubview:_titleLabel];
        
        _timeLabel = [[UILabel alloc]initWithFrame:CGRectMake(230, 75, 100, 10)];
        [_timeLabel setFont:[UIFont systemFontOfSize:12.]];
        [_timeLabel setTextColor:[UIColor lightGrayColor]];
        [self.contentView addSubview:_timeLabel];
        
        _cmtCountLabel = [[UILabel alloc]initWithFrame:CGRectMake(310, 75, 50, 10)];
        [_cmtCountLabel setFont:[UIFont systemFontOfSize:12.]];
        [_cmtCountLabel setTextAlignment:NSTextAlignmentRight];
        [_cmtCountLabel setTextColor:[UIColor lightGrayColor]];
        [self.contentView addSubview:_cmtCountLabel];
        
    }
    return self;
}


-(void)getInfoCellofModel:(Model *)model
{
    if ([model.cmtCount integerValue] == 0) {
        _cmtCountLabel.text = @"抢沙发";
    }else{
        _cmtCountLabel.text = [NSString stringWithFormat:@"%ld评论",[model.cmtCount integerValue]];
    }
    
    
    _titleLabel.text = model.title;
    _timeLabel.text = model.pubDate;
    [_littleImagel setImage:[UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:model.image]]]];
    
}




- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

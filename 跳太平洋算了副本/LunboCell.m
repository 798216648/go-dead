//
//  LunboCell.m
//  跳太平洋算了
//
//  Created by lanou on 16/3/12.
//  Copyright © 2016年 lanou. All rights reserved.
//

#import "LunboCell.h"

@implementation LunboCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        _lbview = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.bounds.size.width, 200)];
        [self.contentView addSubview:_lbview];
        
    }
    return self;
}





- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

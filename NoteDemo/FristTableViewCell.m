//
//  FristTableViewCell.m
//  NoteDemo
//
//  Created by rp.wang on 15/12/9.
//  Copyright © 2015年 rp.wang. All rights reserved.
//

#import "FristTableViewCell.h"

@implementation FristTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self)
    {
        
    }
    return self;
}

@end

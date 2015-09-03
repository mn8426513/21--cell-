//
//  WeiBoCell.h
//  21-通过自定义cell实现简单微博界面
//
//  Created by Mac on 14-9-18.
//  Copyright (c) 2014年 MN&WC. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeiBoFrame.h"



@protocol WeiBoCellDelegate <NSObject>
-(void)btnClick:(UIButton*)btn;
@end

@interface WeiBoCell : UITableViewCell




@property (nonatomic,strong) UIImageView *icon;
@property (nonatomic,strong) UILabel *name;
@property (nonatomic,strong) UIImageView *vip;
@property (nonatomic,strong) UILabel *time;
@property (nonatomic,strong) UILabel *source;
@property (nonatomic,strong) UIImageView *image;
@property (nonatomic,strong) UILabel *content;
@property (nonatomic,strong) WeiBoFrame *weiboframe;




- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;

@end

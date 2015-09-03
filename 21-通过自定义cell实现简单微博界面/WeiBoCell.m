//
//  WeiBoCell.m
//  21-通过自定义cell实现简单微博界面
//
//  Created by Mac on 14-9-18.
//  Copyright (c) 2014年 MN&WC. All rights reserved.
//

#import "WeiBoCell.h"



@implementation WeiBoCell

- (void)awakeFromNib {
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
        self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
       if(self){
           
           
              self.selectionStyle =  UITableViewCellSelectionStyleNone;
           
              _icon = [[UIImageView alloc] init];
           
             [self.contentView addSubview:_icon];
              
              
           
              _name = [[UILabel alloc] init];
           
             [self.contentView addSubview:_name];
           
        
           
           
             _vip = [[UIImageView alloc] init];
           
             _vip.image = [UIImage  imageNamed: @"010.png"];
           
             [self.contentView addSubview:_vip];
           
           
             _time = [[UILabel alloc] init];
             [self.contentView addSubview:_time];
           
           
            _source = [[UILabel alloc] init];
           [self.contentView addSubview:_source];
        
           
           
           _image = [[UIImageView alloc] init];
          
           [self.contentView addSubview:_image];
      
           
           
           _content = [[UILabel alloc] init];
           [self.contentView addSubview:_content];
           
           _content.numberOfLines = 0;
       
          }
    return self;
}

-(void)setWeiboframe:(WeiBoFrame *)weiboframe{
    
    _weiboframe= weiboframe ;
    
    
    
    
    //设置微博的数据
    
    WeiBo * weibo = _weiboframe.weibo;
    
    NSString *imagename = [NSString stringWithFormat: @"%@",weibo.icon];

    _icon.image =  [UIImage imageNamed:imagename];

    _vip.hidden = !weibo.vip;
    
    _name.text = weibo.name;
    
    
    if( _vip.hidden == NO){
        _name.textColor = [UIColor colorWithRed:244/255.0 green:167/255.0 blue:37/255.0 alpha:1.0];
    }
    
    _time.text = weibo.time;
    
    _source.text = weibo.source;
    
    _content.text = weibo.content;
    
    imagename = [NSString stringWithFormat:@"%@",weibo.image];
    _image.image = [UIImage imageNamed: imagename];


  
    
    
    
    
    //设置微博的frame
    _icon.frame = _weiboframe.iconF;
    
    _vip.frame = _weiboframe.vipF;
    
    _name.frame = _weiboframe.nameF;
    
    
    _time.frame = _weiboframe.timeF;
    
    _source.frame =_weiboframe.sourceF;
    
    _content.frame =_weiboframe.contentF;
    
    _image.frame = _weiboframe.imageF;
 

}

-(void)btnClick:(UIButton *)btn{
    
  
    
    


}



@end

//
//  WeiBoFrame.m
//  21-通过自定义cell实现简单微博界面
//
//  Created by Mac on 14-9-19.
//  Copyright (c) 2014年 MN&WC. All rights reserved.
//

#import "WeiBoFrame.h"


#define kboarder 10
#define kiconWH 40
#define vipWH 15
#define kimageWH 200


@implementation WeiBoFrame



-(CGSize) sizeWithText:(NSString*) text font:(UIFont *)font maxsize:(CGSize)maxsize{

    NSDictionary *attrs = @{NSFontAttributeName:font};
   
    return [text boundingRectWithSize: maxsize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;

}



-(void)setWeibo:(WeiBo *)weibo{
    
    _weibo = weibo;
    
    
    CGFloat iconX = kboarder;
    CGFloat iconY = kboarder;
    _iconF = CGRectMake(iconX, iconY,kiconWH , kiconWH);
    
    
    CGFloat nameX = CGRectGetMaxX(_iconF)+ kboarder;
    CGFloat nameY = iconY;
  
    
    CGSize  nameSize = [self sizeWithText:_weibo.name font:[UIFont systemFontOfSize:20] maxsize:CGSizeMake(400, 40)];
    _nameF = CGRectMake(nameX, nameY, nameSize.width, nameSize.height);
    
   
    
    CGFloat  vipX = CGRectGetMaxX(_nameF)+kboarder;
    CGFloat  vipY = iconY ;
    _vipF = CGRectMake(vipX, vipY,vipWH, vipWH);
    
    CGFloat timeX = CGRectGetMaxX(_iconF) + kboarder;
    CGFloat timeY = CGRectGetMaxY(_nameF) + kboarder;
    
    CGSize  timeSize = [self sizeWithText:_weibo.time font:[UIFont systemFontOfSize:20] maxsize:CGSizeMake(400, 40)];
    
    _timeF = CGRectMake(timeX, timeY, timeSize.width, timeSize.height);

    
    CGFloat sourceX = CGRectGetMaxX(_timeF) + kboarder;
    CGFloat sourceY = timeY;
    
    CGSize  sourceSize = [self sizeWithText:_weibo.source font:[UIFont systemFontOfSize:20] maxsize:CGSizeMake(400, 40)];
    _sourceF = CGRectMake(sourceX, sourceY, sourceSize.width, sourceSize.height);

    
    
    
    CGFloat contentX = kboarder;
    CGFloat contentY = MAX(CGRectGetMaxY(_iconF), CGRectGetMaxY(_timeF));
    
    
    
    CGFloat contentW = 320 - 2*kboarder;
    
     CGSize contentSize = [self sizeWithText:_weibo.content font:[UIFont systemFontOfSize:20] maxsize:CGSizeMake(contentW, MAXFLOAT)];
    
    _contentF = CGRectMake(contentX, contentY, contentW,contentSize.height);

    
    
    if(_weibo.image){
   
    CGFloat imageX = kboarder;
    CGFloat imageY =  CGRectGetMaxY(_contentF)  + kboarder;
    _imageF = CGRectMake(imageX, imageY, kimageWH , kimageWH);
    _cellHeight = CGRectGetMaxY(_imageF) + kboarder ;
        
      
    }else{
        
    _cellHeight = CGRectGetMaxY(_contentF);

     }



}
@end

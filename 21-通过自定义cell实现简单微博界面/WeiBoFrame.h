//
//  WeiBoFrame.h
//  21-通过自定义cell实现简单微博界面
//
//  Created by Mac on 14-9-19.
//  Copyright (c) 2014年 MN&WC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import "WeiBo.h"
#import <UIKit/UIKit.h>

@interface WeiBoFrame : NSObject

@property (nonatomic,assign) CGRect iconF;
@property (nonatomic,assign) CGRect nameF;
@property (nonatomic,assign) CGRect vipF;
@property (nonatomic,assign) CGRect timeF;
@property (nonatomic,assign) CGRect sourceF;
@property (nonatomic,assign) CGRect imageF;
@property (nonatomic,assign) CGRect contentF;
@property (nonatomic,assign) CGFloat cellHeight;


@property (nonatomic,strong) WeiBo *weibo;

@end

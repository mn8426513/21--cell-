//
//  WeiBo.h
//  21-通过自定义cell实现简单微博界面
//
//  Created by Mac on 14-9-18.
//  Copyright (c) 2014年 MN&WC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WeiBo : NSObject
@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *name;
@property (nonatomic,assign) BOOL *vip;
@property (nonatomic,copy) NSString *time;
@property (nonatomic,copy) NSString *source;
@property (nonatomic,copy) NSString *image;
@property (nonatomic,copy) NSString *content;

-(id)initWithDict:(NSDictionary *)dict;

+(id)WeiBoWithDict:(NSDictionary *)dict;


@end

//
//  WeiBo.m
//  21-通过自定义cell实现简单微博界面
//
//  Created by Mac on 14-9-18.
//  Copyright (c) 2014年 MN&WC. All rights reserved.
//

#import "WeiBo.h"

@implementation WeiBo

-(id)initWithDict:(NSDictionary *)dict{

    if(self=[super init]){
    
        self.icon = dict[@"icon"];
        
    
        self.name = dict [@"name"];
        self.vip  = [dict[@"vip"] boolValue];
        self.time = dict[@"time"];
        self.source = dict[@"source"];
        self.image = dict[@"image"];
        self.content = dict[@"content"];
     }
    return self;
}

+(id)WeiBoWithDict:(NSDictionary *)dict{

     WeiBo *weibo = [[WeiBo alloc] initWithDict:dict];
    
     return weibo;
}
@end

//
//  ViewController.m
//  21-通过自定义cell实现简单微博界面
//
//  Created by Mac on 14-9-18.
//  Copyright (c) 2014年 MN&WC. All rights reserved.
//

#import "ViewController.h"
#import  "WeiBoFrame.h"

@interface ViewController (){
}
@property (nonatomic,strong) NSMutableArray *allWeiBo;
@end



@implementation ViewController

-(NSMutableArray *)allWeiBo{
    
           if (_allWeiBo==nil) {
             NSArray *dictArray =[NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"weibo.plist" ofType:nil]];
               NSMutableArray *array =[NSMutableArray array];
               for ( NSDictionary *dict in dictArray){
                     
                   WeiBo * weibo = [WeiBo WeiBoWithDict:dict];
                   
                   [array addObject:weibo];
                  }
        
                  _allWeiBo =array;
               
          }
 
    return _allWeiBo;
}

    

            
    





            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self allWeiBo];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//数据源方法
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{


    return  1;
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return _allWeiBo.count;

}





-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
  
            static NSString *cellIdentifier = @"ID";
    
            WeiBoCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
           if(cell ==nil){
           
               cell = [[WeiBoCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
         }
    
               
          WeiBoFrame *weiboframe = [[WeiBoFrame alloc] init];
    
          weiboframe.weibo = _allWeiBo[indexPath.row];
  
    
           cell.weiboframe = weiboframe;
    
    
    
           return cell;



}

//代理方法
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
        WeiBoFrame *weiboframe = [[WeiBoFrame alloc] init];
    
        weiboframe.weibo = _allWeiBo[indexPath.row];
    
        return weiboframe.cellHeight;
    
   
}




@end

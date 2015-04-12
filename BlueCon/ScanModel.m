//
//  ScanModel.m
//  BlueCon
//
//  Created by ken on 15-4-12.
//  Copyright (c) 2015年 ken. All rights reserved.
//

#import "ScanModel.h"

@implementation ScanModel



- (id) init
{
    if(self = [super init])
    {
        //为子类增加属性进行初始化
        self.task=[[ScanTask alloc] init];
        self.task.delegate=self;
        
        
        
    }
    return self;
}

-(void)scan{
    [self.task httpScan:@"http://www.baidu.com" method:@"post"];

}

-(void)httpReturn:(int)re url:(NSString *)url{
    
    [self.mDelegate  modelRes:re url:url];
    


}



@end

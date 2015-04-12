//
//  ScanTask.m
//  BlueCon
//
//  Created by ken on 15-4-12.
//  Copyright (c) 2015年 ken. All rights reserved.
//

#import "ScanTask.h"

@implementation ScanTask

- (id) init
{
    if(self = [super init])
    {
        //为子类增加属性进行初始化
    }
    return self; 
}


-(void)httpScan:(NSString *)url method:(NSString *)method{

    NSString * tUrl=url;
    NSLog(@"url=%@",tUrl);
    
    int httpReturn=10;
    [self.delegate httpReturn:httpReturn url:tUrl];
    
    
    
    

    
}

@end


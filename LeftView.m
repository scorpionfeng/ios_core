//
//  LeftView.m
//  BlueCon
//
//  Created by ken on 15-1-5.
//  Copyright (c) 2015年 ken. All rights reserved.
//

#import "LeftView.h"

@implementation LeftView

-(id)initWithFrame:(CGRect)frame{
    
    self=[super initWithFrame:frame];
    if (self) {
        self. backgroundColor=[UIColor redColor];
        UIButton *btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame=CGRectMake(0, 0, 100, 50);
        [btn setTitle:@"leftview" forState:UIControlStateNormal];
        btn.center=CGPointMake(140, 264);
        [btn addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn];
    }
    return self;
}

-(void)onClick:(UIButton *)button{
    NSLog(@"leftView button pressed");
}
@end

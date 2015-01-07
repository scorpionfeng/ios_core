//
//  MainViewController.m
//  BlueCon
//
//  Created by ken on 15-1-5.
//  Copyright (c) 2015年 ken. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController
@synthesize leftView;
@synthesize centerView;

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect screen =[[UIScreen mainScreen] bounds];
    CGFloat width=screen.size.width;
    CGFloat height=screen.size.height;
    
    leftView =[[LeftView alloc] init];
    leftView.frame=CGRectMake(0, 0, width,height);
    leftView.delegate=self;
    [self.view addSubview:leftView];
    
    centerView=[[CenterView alloc] init];
    centerView.frame=CGRectMake(0, 0, width, height);
    [self.view addSubview:centerView ];
    
   
    
}

-(void) passValue:(NSString *) value{
    NSLog(@"string= %@",value);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

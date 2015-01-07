//
//  SecViewController.m
//  BlueCon
//
//  Created by ken on 15-1-7.
//  Copyright (c) 2015年 ken. All rights reserved.
//

#import "SecViewController.h"

@interface SecViewController ()

@end

@implementation SecViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"view did load");
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loadView{
    NSLog(@"load view");
    
    UIView *baseView=[[UIView alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    baseView.backgroundColor=[UIColor purpleColor];
    self.title=@"color pick";
    self.view=baseView;
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

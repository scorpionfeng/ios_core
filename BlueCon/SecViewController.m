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
    
    UIButton *scan=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [scan addTarget:self action:@selector(scan) forControlEvents:UIControlEventTouchUpInside];
    scan.frame=CGRectMake(30, 30, 80, 20);
    scan.center=CGPointMake(140, 264);
     [scan setTitle:@"scan" forState:UIControlStateNormal];
//    [self.view addSubview:scan];
    [baseView addSubview:scan];
    
    
 
//    self.view mak

}



-(void)scan{
    
    ScanModel *sm=[[ScanModel alloc] init];
    sm.mDelegate=self;
    [sm scan];
    
    
}

-(void)modelRes:(int)re url:(NSString *)url{
    NSLog(@"url=%@,and result= %i",url,re);
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

//
//  MainViewController.h
//  BlueCon
//
//  Created by ken on 15-1-5.
//  Copyright (c) 2015年 ken. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LeftView.h"
#import "CenterView.h"

@interface MainViewController : UIViewController

@property (strong,nonatomic) LeftView *leftView;
@property (strong,nonatomic) CenterView *centerView;

@end

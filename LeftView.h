//
//  LeftView.h
//  BlueCon
//
//  Created by ken on 15-1-5.
//  Copyright (c) 2015年 ken. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PassValue.h"

@interface LeftView : UIView
@property (strong,nonatomic) NSObject<PassValue> *delegate;

@end

//
//  CenterView.h
//  BlueCon
//
//  Created by ken on 15-1-5.
//  Copyright (c) 2015年 ken. All rights reserved.
//

#import <UIKit/UIKit.h>


#define MAX_CENTER_X 360
#define BOUND_X 280
@interface CenterView : UIView{
    UIPanGestureRecognizer  * panGestureRecognizer;
    float centerX;
    float centerY;
}

@end

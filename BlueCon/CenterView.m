//
//  CenterView.m
//  BlueCon
//
//  Created by ken on 15-1-5.
//  Copyright (c) 2015年 ken. All rights reserved.
//

#import "CenterView.h"

@implementation CenterView

-(id)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    
    if(self){
        CGRect screen=[[UIScreen mainScreen] bounds];
        centerX=screen.size.width /2;
        centerY=screen.size.height /2;
        self.backgroundColor=[UIColor greenColor];
        
        UIButton *leftUpBtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        leftUpBtn.frame=CGRectMake(10, 70, 40, 40);
        [leftUpBtn setTitle:@"扫描" forState:UIControlStateNormal];

        [leftUpBtn addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:leftUpBtn];
        panGestureRecognizer=[[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
        [self addGestureRecognizer:panGestureRecognizer];
        
        
    }
    
    
    return self;
}

-(void)buttonPressed:(UIButton * )button{
    
    [UIView animateWithDuration:0.2 animations:^(void){
        if (self.center.x==centerX) {
            self.center=CGPointMake(MAX_CENTER_X, centerY);
        }else if(self.center.x==MAX_CENTER_X){
            self.center=CGPointMake(centerX, centerY);
        }
    }];
    
   
}

-(void)handlePan:(UIPanGestureRecognizer*)recognizer{
    NSLog(@"handlePan");
    CGPoint translation = [recognizer translationInView:self];
    float x = self.center.x + translation.x;
    if (x < centerX) {
        x = centerX;
    }
    self.center = CGPointMake(x, centerY);
    
    if (recognizer.state == UIGestureRecognizerStateEnded) {
        
        [UIView animateWithDuration:0.2 animations:^(void){
            
            if (x > BOUND_X) {
                self.center = CGPointMake(MAX_CENTER_X, centerY);
            }else{
                self.center = CGPointMake(centerX, centerY);
            }
            
        }];
        
        
    }
    
    [recognizer setTranslation:CGPointZero inView:self];
    
    
}


@end

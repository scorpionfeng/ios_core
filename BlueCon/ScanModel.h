//
//  ScanModel.h
//  BlueCon
//
//  Created by ken on 15-4-12.
//  Copyright (c) 2015年 ken. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScanTaskProto.h"
#import "ScanTask.h"
#import "ScanModelProto.h"
@interface ScanModel : NSObject<ScanTaskProto>

@property (atomic,retain) ScanTask *task;

@property (atomic,retain ) id<ScanModelProto> mDelegate;
-(void)scan;

@end

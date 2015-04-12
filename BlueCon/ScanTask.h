//
//  ScanTask.h
//  BlueCon
//
//  Created by ken on 15-4-12.
//  Copyright (c) 2015年 ken. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ScanTaskProto.h"
@interface ScanTask : NSObject

@property (retain,atomic) id<ScanTaskProto> delegate;

-(void) httpScan:(NSString *)url method:(NSString *)method;

@end

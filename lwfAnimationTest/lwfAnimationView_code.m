//
//  lwfAnimationView.m
//  lwfAnimationTest
//
//  Created by pptv on 2017/8/15.
//  Copyright © 2017年 pptv. All rights reserved.
//

#import "lwfAnimationView_code.h"
#import "LWFObject.h"
#import "ReactiveCocoa.h"

@implementation lwfAnimationView_code

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)beginAnimation:(completeEventHandler)complete
{
    LWFObject *lwfObject = [LWFObject lwfWithFile:@"sample3_max_optimized.lwf" view:self];
    [self addLWFObject:lwfObject];
    
    @weakify(self)
    [lwfObject addEventHandler:@"complete" handler:^{
        @strongify(self)
        [self invalidate];
        complete();
    }];
}

@end

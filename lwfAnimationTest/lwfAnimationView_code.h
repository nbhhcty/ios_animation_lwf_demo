//
//  lwfAnimationView.h
//  lwfAnimationTest
//
//  Created by pptv on 2017/8/15.
//  Copyright © 2017年 pptv. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LWFView.h"

typedef void (^completeEventHandler)();

@interface lwfAnimationView_code : LWFView
-(void)beginAnimation:(completeEventHandler)complete;
@end

//
//  ViewController.m
//  lwfAnimationTest
//
//  Created by pptv on 2017/8/15.
//  Copyright © 2017年 pptv. All rights reserved.
//

#import "ViewController.h"
#import "lwfAnimationView_code.h"
#import "lwfAnimationVC_xib.h"
#import "Masonry.h"

@interface ViewController ()
@property(nonatomic, strong) lwfAnimationView_code* animationView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
#if 0
    // 方式一：使用xib或者storyBosrd，直接设置path为lwf文件的路径名字即可
    lwfAnimationVC_xib* xibVC = [lwfAnimationVC_xib new];
    [self.view addSubview:xibVC.view];
    [xibVC.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
#else
    // 方式二：代码可以，处理动画结束事件
    _animationView = [lwfAnimationView_code new];

    [self.view addSubview:_animationView];

    [_animationView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];

    [_animationView beginAnimation:^{
        NSLog(@"动画结束了");
    }];
#endif
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

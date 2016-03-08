//
//  VC1.m
//  test
//
//  Created by hqs on 16/3/8.
//  Copyright © 2016年 hqs. All rights reserved.
//

#import "VC1.h"
#import "VC2.h"

@implementation VC1

- (void)viewDidLoad{
    self.view.backgroundColor =  [UIColor colorWithRed:0.151 green:0.265 blue:0.327 alpha:1.000];
    self.title = @"vc1";
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeContactAdd];
    button.center = self.view.center;
    [self.view addSubview:button];
    [button addTarget:self action:@selector(addButtonClick) forControlEvents:UIControlEventTouchUpInside];
}

- (void)addButtonClick{
    [self.navigationController pushViewController:self.nextVC animated:YES];
    
}

- (void)viewWillDisappear:(BOOL)animated{
    [self changeTitle];
}


- (void)changeTitle{
    NSArray *vcs = self.navigationController.viewControllers;
    if (vcs.count >= 3) {
        self.title = [vcs[vcs.count - 3] title];
    }
}

-(void)removeSelf{
    NSMutableArray *vcs = [NSMutableArray arrayWithArray:self.navigationController.viewControllers];
    if (vcs.count >= 2) {
        [vcs removeObjectAtIndex:vcs.count - 2];
        
        self.navigationController.viewControllers = vcs;
    }
}

- (void)viewDidDisappear:(BOOL)animated{
    [self removeSelf];
}


@end

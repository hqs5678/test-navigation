//
//  ViewController.m
//  test
//
//  Created by hqs on 16/3/4.
//  Copyright © 2016年 hqs. All rights reserved.
//

#import "ViewController.h"
#import "VC1.h"
#import "VC2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"home";
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeContactAdd];
    button.center = self.view.center;
    [self.view addSubview:button];
    [button addTarget:self action:@selector(addButton) forControlEvents:UIControlEventTouchUpInside];
}

- (void)addButton{
    VC1 *vc = [[VC1 alloc]init];
    VC2 *nextVC = [[VC2 alloc]init];
    vc.nextVC = nextVC;
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

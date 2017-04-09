//
//  ViewController.m
//  ScrollViewAutoLayout
//
//  Created by Xiaodou on 2017/4/9.
//  Copyright © 2017年 civilis. All rights reserved.
//

#import "ViewController.h"
#import "XibViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITapGestureRecognizer *tapGR = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapOnce)];
    [self.view addGestureRecognizer:tapGR];
}

- (void)tapOnce {
    XibViewController *xibVC = [[XibViewController alloc] init];
    [self presentViewController:xibVC animated:YES completion:NULL];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

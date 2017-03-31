//
//  ViewController.m
//  MWApiCloud-SuperWebview-Demo
//
//  Created by dairugang on 2017/3/31.
//  Copyright © 2017年 dairugang. All rights reserved.
//

#import "ViewController.h"
#import "MWWebViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)openWebView:(id)sender {
    // 这里的widget://表示widget的根目录路径
    NSString *url = @"widget://index.html";
    NSString *name = @"web view controller";
    MWWebViewController *webVC = [MWWebViewController windowContainerWithAttribute:@{@"url":url, @"name":name}];
    [webVC startLoad];
    [self.navigationController pushViewController:webVC animated:YES];
}

@end

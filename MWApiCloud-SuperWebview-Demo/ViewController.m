//
//  ViewController.m
//  MWApiCloud-SuperWebview-Demo
//
//  Created by dairugang on 2017/3/31.
//  Copyright © 2017年 dairugang. All rights reserved.
//

#import "ViewController.h"
#import "MWWebViewController.h"
#import "APIWidgetContainer.h"

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
     [self openWebViewWithWidgetType];
//    [self openWebViewWithWindowType];
}

/**
 以WebView的方式打开页面，就相当于打开了一个ViewController
 这种方式下，自己可以在本地创建NavViewController，然后push WebView页面
 主要是方面集成到现有的本地页面中
 */
- (void)openWebViewWithWindowType {
    // 这里的widget://表示widget的根目录路径
    NSString *url = @"widget://index.html";
    NSString *name = @"index";
    MWWebViewController *webVC = [MWWebViewController windowContainerWithAttribute:@{@"url":url, @"name":name}];
    [webVC startLoad];
    [self.navigationController pushViewController:webVC animated:YES];
//    [self presentViewController:webVC animated:YES completion:nil];
}


/**
 以widget的方式打开页面，相当于打开了一个NavigationViewController
 */
- (void)openWebViewWithWidgetType {
    // 这里的widget://表示widget的根目录路径
     NSString *url = @"widget://index.html";
//    NSString *url = @"widget://feather/login/login.html";
    // NSString *name = @"widget web view controller";
    APIWidgetContainer *webVC = [APIWidgetContainer widgetContainerWithUrl:url];
    [webVC startLoad];
    [self presentViewController:webVC animated:YES completion:nil];
}


@end

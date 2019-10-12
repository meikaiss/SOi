//
//  ViewController.m
//  SOi
//
//  Created by meikai on 2019/10/8.
//  Copyright © 2019 meikai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//视图加载完成
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//内存紧张时，由系统调用此方法
-(void)didReceiveMemoryWarning{
    [super didReceiveMemoryWarning];
}

//视图将要显示出来
-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    
}

//视图已经显示出来
- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:YES];
}

//视图将要被隐藏或移出窗口
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:YES];
}

//视图已经隐藏或被移出窗口
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:YES];
}

//此控制器即将要排列它的子视图时调用
- (void)viewWillLayoutSubviews{
    
}

//此控制器已经把它所包含的子视图排列完成
- (void)viewDidLayoutSubviews{
    
}

@end

//
//  ViewController.m
//  SOi
//
//  Created by meikai on 2019/10/8.
//  Copyright © 2019 meikai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *tvName;
@property (weak, nonatomic) IBOutlet UISwitch *mapSwitch;
@property (weak, nonatomic) IBOutlet UIProgressView *loadProgress;
@property (weak, nonatomic) IBOutlet UIProgressView *loadProgress2;
@property UITextField *tfWithTag;
- (IBAction)btnLoginClick:(UIButton *)sender forEvent:(UIEvent *)event;

@property UIButton *btnEventBind;
@property (weak, nonatomic) IBOutlet UILabel *labelBindRes;

@end

@implementation ViewController


//视图加载完成
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_tvName setText:@"测试修改名称"];
    [_loadProgress setProgress:0.1f];
    
    _tfWithTag = [self.view viewWithTag:100];
    _tfWithTag.text = @"找到tag对应的view后修改其text";
    
    self.btnEventBind = [self.view viewWithTag:101];
    [self.btnEventBind addTarget:self action:@selector(onBindClick:) forControlEvents:UIControlEventTouchUpInside];
    
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

- (IBAction)func:(id)sender {
    
}

- (IBAction)btnLoginClick:(UIButton *)sender forEvent:(UIEvent *)event {
    _tfWithTag.text = @"测试点击";
}


-(void) onBindClick:(UIButton*)sender{
    //_labelBindRes.text = @"执行了代码1";
    self.labelBindRes.text = @"执行了代码2";
}

@end

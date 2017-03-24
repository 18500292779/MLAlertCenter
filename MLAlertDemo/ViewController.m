//
//  ViewController.m
//  MLAlertDemo
//
//  Created by zhaoml on 16/6/3.
//  Copyright © 2016年 zhaoml. All rights reserved.
//

#import "ViewController.h"
#import "MLAlertCenter.h"

@interface ViewController ()
{
    UITextField *text;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *hideBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    hideBtn.frame = CGRectMake(0, 0, self.view.frame.size.width, 35);
    [hideBtn setTitle:@"关闭" forState:UIControlStateNormal];
    hideBtn.backgroundColor = [UIColor lightGrayColor];
    [hideBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [hideBtn addTarget:self action:@selector(hideText) forControlEvents:UIControlEventTouchUpInside];
    
    text = [[UITextField alloc]initWithFrame:CGRectMake(10, 30, self.view.frame.size.width - 20, 40)];
    text.layer.borderColor = [UIColor blackColor].CGColor;
    text.layer.borderWidth = 0.5;
    text.inputAccessoryView = hideBtn;
    [self.view addSubview:text];
    
    UIButton *showBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    showBtn.frame = CGRectMake(10, 200, self.view.frame.size.width-20, 35);
    [showBtn setTitle:@"弹弹弹弹弹弹" forState:UIControlStateNormal];
    showBtn.backgroundColor = [UIColor lightGrayColor];
    [showBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [showBtn addTarget:self action:@selector(showAle) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:showBtn];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)showAle {
    [text resignFirstResponder];
    [[MLAlertCenter defaultCenter]postAlertWithContent:text.text];
}

- (void)hideText {
    [text resignFirstResponder];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  FlyLabel
//
//  Created by GZ on 15/12/14.
//  Copyright (c) 2015年 G.Z All rights reserved.
//

#import "ViewController.h"
#import "ELNLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor cyanColor];
    
    ELNLabel *label = [[ELNLabel alloc]initWithFrame:CGRectMake(50, 100, 275, 50)];
    label.layer.masksToBounds = YES;
    label.layer.cornerRadius = 50/2;
    label.backgroundColor = [UIColor yellowColor];
    
    label.text = @"会飞~~~☺️";
    label.textColor = [UIColor redColor];
    label.textAlignment = NSTextAlignmentCenter;
    
    
    [self.view addSubview:label];
    
 //设置行数
    label.numberOfLines = 1;
    //默认只能显示一行
    //大于1表示显示多行
    label.numberOfLines = 0;
    //显示无限多行
    
//设置字体
    label.font = [UIFont systemFontOfSize:25];
    
    
    
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

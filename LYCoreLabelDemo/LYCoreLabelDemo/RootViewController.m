//
//  RootViewController.m
//  LYCoreLabelDemo
//
//  Created by LYoung on 15/9/24.
//  Copyright (c) 2015年 LYoung. All rights reserved.
//

#import "RootViewController.h"

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //富文本
    NSString *coreTextString = @"CoreText[/爱心]框架是基于 iOS 3.2+ 和 OSX 10.5+ [/握手]的一种能够对文本格式和文本布局进行精细控制的文本引擎。它良好的结合了 UIKit 和 Core Graphics/Quartz：UIKit 的 UILabel允许你通过在 IB 中简单的拖曳添加文本，[/大兵]但你不能改变文本的颜色和其中的单词。[/强]";
    
    
    CGFloat coreLabelX = 10;
    CGFloat coreLabelY = 100;
    CGFloat maxW = self.view.frame.size.width - 2*coreLabelX;
    CGSize maxSize = CGSizeMake(maxW, MAXFLOAT);
    
    UILabel * coreLabel= [[UILabel alloc] init];
    coreLabel.textColor = [UIColor blackColor];
    coreLabel.backgroundColor = [UIColor clearColor];
    coreLabel.numberOfLines = 0;
    coreLabel.font = TextFont;
    [self.view addSubview:coreLabel];
    
    //计算高度
    coreLabel.attributedText = [NSMutableAttributedString stringWithText:coreTextString];
    CGSize textSize = [coreTextString sizeWithFont:TextFont maxSize:maxSize];
    coreLabel.frame = (CGRect){{coreLabelX, coreLabelY}, textSize};
    
    
    
    
    
    
    
    
    
    
    
    //关于
    [self LYoung];
    
}

- (void)LYoung{
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(0, self.view.frame.size.height - 80, self.view.frame.size.width, 80);
    label.text = @"版权所有:LYoung 2015.9.24";
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont boldSystemFontOfSize:20.0];
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

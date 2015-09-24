//
//  NSMutableAttributedString+Extention.h
//  LYCoreLabelDemo
//
//  Created by LYoung on 15/9/24.
//  Copyright (c) 2015年 LYoung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableAttributedString (Extention)

+ (NSMutableAttributedString *)stringWithText:(NSString *)text;
+ (void)getFaceRange:(NSString *)msg msgArray:(NSMutableArray *)msgArray;

@end

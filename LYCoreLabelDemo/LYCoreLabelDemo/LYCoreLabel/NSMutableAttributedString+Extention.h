//
//  NSMutableAttributedString+Extention.h
//  LYCoreLabelDemo
//
//  Created by LYoung on 15/9/24.
//  Copyright (c) 2015年 LYoung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableAttributedString (Extention)
/**
 *  得到遍历后的字符
 *
 *  @param text 输入字符
 *
 *  @return 返回遍历后字符
 */
+ (NSMutableAttributedString *)stringWithText:(NSString *)text;

/**
 *  得到表情
 *
 *  @param msg
 *  @param msgArray 递归遍历
 */
+ (void)getFaceRange:(NSString *)msg msgArray:(NSMutableArray *)msgArray;

@end

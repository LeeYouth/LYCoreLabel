//
//  NSMutableAttributedString+Extention.m
//  LYCoreLabelDemo
//
//  Created by LYoung on 15/9/24.
//  Copyright (c) 2015年 LYoung. All rights reserved.
//

#import "NSMutableAttributedString+Extention.h"
#import <CoreText/CoreText.h>

@implementation NSMutableAttributedString (Extention)
+ (NSMutableAttributedString *)stringWithText:(NSString *)text
{
    NSMutableArray *msgArray = [NSMutableArray array];
    [self getFaceRange:text msgArray:msgArray];
    NSMutableAttributedString *attributedString = [self textAndImage:msgArray];
    return attributedString;
}

+ (void)getFaceRange:(NSString *)msg msgArray:(NSMutableArray *)msgArray{
    if (msg.length == 0) return;
    //便利msg里面的每一标识
    //1.查找表情区域
    NSRange beginRange = [msg rangeOfString:BEGIN_FLAG];
    NSRange endRange = [msg rangeOfString:END_FLAG];
    
    NSLog(@"%@",NSStringFromRange(beginRange));
    NSLog(@"%@",NSStringFromRange(endRange));
    
    //同时找到表情的开始和结束标签,才算是一个表情
    if (beginRange.length && endRange.length) {
        //2.截取表情之前的字符串
        NSString *strBeforeFace = [msg substringToIndex:beginRange.location];
        if (strBeforeFace.length) {
            [msgArray addObject:strBeforeFace];
        }
        
        //3.截取表情
        NSUInteger loc = beginRange.location;
        NSUInteger len = endRange.location + 1 - beginRange.location;
        NSRange faceRange = NSMakeRange(loc, len);
        NSString *strFace = [msg substringWithRange:faceRange];
        [msgArray addObject:strFace];
        
        
        //4.截取表情之后字符串
        NSString *strAfterFace = [msg substringFromIndex:endRange.location + 1];
        //[msgArray addObject:strAfterFace];
        //递归
        [self getFaceRange:strAfterFace msgArray:msgArray];
    }else{
        [msgArray addObject:msg];
    }
}

+ (NSMutableAttributedString *)textAndImage:(NSArray *)msgArray{
    
    //    if(msgArray.count == 0) return;
    
    NSMutableAttributedString *attStrM = [[NSMutableAttributedString alloc] initWithString:@""];
    //遍历表示与文字
    
    for (NSString *item in msgArray) {
        NSRange beginRange = [item rangeOfString:BEGIN_FLAG];
        NSRange endRange = [item rangeOfString:END_FLAG];
        //同时找到表情的开始和结束标签,才算是一个表示
        if (beginRange.length && endRange.length){
            
            NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
            attachment.image = [UIImage imageNamed:[FaceDict objectForKey:item]];
            attachment.bounds = CGRectMake(0, 0, 15, 15);
            
            NSAttributedString *attStr = [NSAttributedString attributedStringWithAttachment:attachment];
            
            [attStrM appendAttributedString:attStr];
        }else{
            //文字部分
            NSAttributedString *attStr = [[NSAttributedString alloc] initWithString:item];
            [attStrM appendAttributedString:attStr];
        }
    }
    return attStrM;
}

@end

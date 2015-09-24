//
//  Define.h
//  LYCoreLabelDemo
//
//  Created by LYoung on 15/9/24.
//  Copyright (c) 2015年 LYoung. All rights reserved.
//

#ifndef LYCoreLabelDemo_Define_h
#define LYCoreLabelDemo_Define_h


#define BEGIN_FLAG  @"[/"
#define END_FLAG    @"]"

#define TextFont [UIFont systemFontOfSize:16]

#define FaceArray [[NSMutableArray alloc] initWithObjects: @"[/呲牙]", @"[/调皮]", @"[/偷笑]", @"[/擦汗]", @"[/玫瑰]", @"[/酷]", @"[/爱心]", @"[/奋斗]", @"[/鄙视]", @"[/大兵]", @"[/可怜]", @"[/强]", @"[/弱]",@"[/握手]", @"[/胜利]", @"[/抱拳]", @"[/勾引]", @"[/OK]", @"[/鼓掌]", @"[/回头]",@"[/拜拜]",@"[/鄙视]",@"[/财迷]", @"[/顶]", @"[/尴尬]", @"[/惊讶]", @"[/鬼脸]", @"[/汗]", @"[/抠鼻]",@"[/爱慕]", @"[/怒]",@"[/亲亲]", @"[/色]", @"[/算数]", @"[/笑]", @"[/疑问]",@"[/怒赞]", @"[/早]", @"[/恭喜发财]",@"[/爱慕]" ,nil]

#define ImageNumArray [[NSMutableArray alloc]initWithObjects:@"Small001.png", @"Small002.png", @"Small003.png", @"Small004.png", @"Small005.png", @"Small006.png", @"Small007.png", @"Small008.png", @"Small009.png", @"Small010.png", @"Small011.png", @"Small012.png", @"Small013.png", @"Small014.png", @"Small015.png", @"Small016.png", @"Small017.png", @"Small018.png", @"Small019.png", @"Small020.png", @"Small022.gif", @"Small023.gif", @"Small024.gif", @"Small025.gif", @"Small026.gif", @"Small027.gif", @"Small028.gif", @"Small029.gif", @"Small030.gif", @"Small031.gif", @"Small032.gif", @"Small033.gif", @"Small034.gif", @"Small035.gif", @"Small036.gif", @"Small037.gif", @"Small038.gif", @"Small039.gif", @"Small040.gif", @"Small041.gif", nil]

#define FaceDict [[NSDictionary alloc] initWithObjects:ImageNumArray forKeys:FaceArray]


#import "NSMutableAttributedString+Extention.h"
#import "NSString+FindFace.h"

#endif

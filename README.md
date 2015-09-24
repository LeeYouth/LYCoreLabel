# LYCoreLabel
一个很好用的图文混排label
## 使用方法
   NSString *coreTextString = @"CoreText[/爱心]框架是基于 iOS 3.2+ 和 OSX 10.5+ [/握手]的一种能够对文本格式和文本布局进行精细控制的文本引擎。它良好的结合了 UIKit 和 Core Graphics/Quartz：UIKit 的 UILabel []允许你通过在 IB 中简单的拖曳添加文本，[/大兵]但你不能改变文本的颜色和其中的单词。[/强]"; 
    CGFloat coreLabelX = 10;
    CGFloat maxW = self.view.frame.size.width - 2*coreLabelX;
    CGSize maxSize = CGSizeMake(maxW, MAXFLOAT);

    
    
    UILabel * coreLabel= [[UILabel alloc] init];
    coreLabel.textColor = [UIColor blackColor];
    coreLabel.numberOfLines = 0;
    coreLabel.font = TextFont;
    [self.view addSubview:coreLabel];
    
    
    coreLabel.attributedText = [NSMutableAttributedString stringWithText:coreTextString];
## 计算富文本高度
  CGSize textSize = [coreTextString sizeWithFont:TextFont maxSize:maxSize];
  coreLabel.frame = (CGRect){{coreLabelX, 0}, textSize};

//
//  BaseView.m
//  XIBDemo
//
//  Created by WangXueqi on 2017/12/23.
//  Copyright © 2017年 JingBei. All rights reserved.
//

#import "BaseView.h"

@implementation BaseView

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        [self addSubView];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self addSubView];
    }
    return self;
}

- (void)addSubView {
    
    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 50, 30)];
    label.backgroundColor = [UIColor darkGrayColor];
    label.text = @"你好";
    label.center = self.center;
    [self addSubview:label];
}

- (IBAction)backButtonClick:(id)sender {
    
    [self removeFromSuperview];
}

- (void)awakeFromNib {
    
    [super awakeFromNib];
    [UIView animateWithDuration:2.0f animations:^{
        self.label.center = self.center;
    } completion:^(BOOL finished) {
        self.label.text = @"修改";
    }];
}

@end

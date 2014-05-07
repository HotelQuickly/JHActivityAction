//
//  JHActivityAction.h
//  JHActivityActionDemo
//
//  Created by KaZeKiM Macbook Pro on 5/7/14.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JHPanelView.h"
#import "JHActivity.h"

typedef NS_ENUM(NSInteger, JHIconSize)
{
    JHIconSizeSmall = 29,
    JHIconSizeNormal = 39,
    JHIconSizeiPad = 74
};

@interface JHActivityAction : UIView<UIScrollViewDelegate>

@property (nonatomic, strong) NSString *title;
@property (nonatomic, readonly) BOOL isShowing;

- (id)initWithActivityItems:(NSArray *)activityItems applicationActivities:(NSArray *)applicationActivities imageSize:(JHIconSize)imageSize;
// Attempt automatically use top of hierarchy view.
- (void)show;
- (void)showInView:(UIView *)view;
- (void)dismissActionSheet;

@end

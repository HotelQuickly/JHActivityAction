//
//  JHPanelView.m
//  JHActivityActionDemo
//
//  Created by KaZeKiM Macbook Pro on 5/7/14.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import "JHPanelView.h"
#import "JHActivityAction.h"

#ifdef __IPHONE_6_0
# define ALIGN_CENTER NSTextAlignmentCenter
# define MIDDLE_TRUNCATE NSLineBreakByTruncatingMiddle
#else
# define ALIGN_CENTER UITextAlignmentCenter
# define MIDDLE_TRUNCATE UILineBreakModeMiddleTruncation
#endif

@implementation JHPanelView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    //// General Declarations
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //// Color Declarations
    UIColor *gradientTop = [UIColor blackColor];
    UIColor *gradientBottom = [UIColor blackColor];
    
    //// Gradient Declarations
    NSArray *gradientColors = [NSArray arrayWithObjects:
                               (id)gradientTop.CGColor,
                               (id)gradientBottom.CGColor, nil];
    CGFloat gradientLocations[] = {1, 1};
    CGGradientRef lineGradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)gradientColors, gradientLocations);
    
    //// Frames
    CGRect panelFrame = CGRectInset(self.bounds, 0, 0);
    
    //// Draw gradient
    UIBezierPath *roundedRectPath = [UIBezierPath bezierPathWithRoundedRect:panelFrame cornerRadius:0];
    CGContextSaveGState(context);
    //   CGContextSetShadowWithColor(context, outerShadowOffset, outerShadowBlurRadius, outerShadow.CGColor);
    CGContextBeginTransparencyLayer(context, NULL);
    [roundedRectPath addClip];
    CGRect roundedRectBounds = CGPathGetPathBoundingBox(roundedRectPath.CGPath);
    CGContextDrawLinearGradient(context, lineGradient,
                                CGPointMake(CGRectGetMidX(roundedRectBounds), CGRectGetMinY(roundedRectBounds)),
                                CGPointMake(CGRectGetMidX(roundedRectBounds), CGRectGetMaxY(roundedRectBounds)),
                                0);
    CGContextEndTransparencyLayer(context);
    
}


@end

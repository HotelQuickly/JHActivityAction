//
//  JHActivity.m
//  JHActivityActionDemo
//
//  Created by KaZeKiM Macbook Pro on 5/7/14.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import "JHActivity.h"

@implementation JHActivity

- (id)initWithTitle:(NSString *)title image:(UIImage *)image actionBlock:(JHActionBlock)actionBlock
{
    self = [super init];
    if (self) {
        _title = [title copy];
        _image = [image copy];
        _actionBlock = [actionBlock copy];
    }
    return self;
}

- (id)initWithImage:(UIImage *)image actionBlock:(JHActionBlock)actionBlock
{
    self = [super init];
    if (self) {
        _image = [image copy];
        _actionBlock = [actionBlock copy];
    }
    return self;
}

- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems
{
    return YES;
}

@end

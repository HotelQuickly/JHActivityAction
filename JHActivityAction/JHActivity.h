//
//  JHActivity.h
//  JHActivityActionDemo
//
//  Created by KaZeKiM Macbook Pro on 5/7/14.
//  Copyright (c) 2014 kazekim. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JHActivity : NSObject

typedef void (^JHActionBlock)(JHActivity *activity, NSArray *avtivityItems);

@property (readonly, nonatomic) NSString *title;
@property (readonly, nonatomic) UIImage *image;
@property (strong, nonatomic) id userInfo;
@property (copy, nonatomic) JHActionBlock actionBlock;

- (id)initWithTitle:(NSString *)title image:(UIImage *)image actionBlock:(JHActionBlock)actionBlock;
- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems;

@end

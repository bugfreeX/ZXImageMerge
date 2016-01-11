//
//  UIImage+ZXImageMerge.h
//  ZXImageMerge
//
//  Created by FreeGeek on 16/1/11.
//  Copyright © 2016年 ZhongXi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ZXImageMerge)
+ (UIImage*)MergeBackgroundImageView:(UIImageView*)backgroundImageView additionalImageView:(UIImageView*)additionalImageView addCoordinatesPoint:(CGPoint)point;
+ (UIImage*)MergeBackgroundImage:(UIImage*)backgroundImage additionalImage:(UIImage*)additionalImage addCoordinatesPoint:(CGPoint)point;
@end

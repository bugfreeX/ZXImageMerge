//
//  UIImage+ZXImageMerge.m
//  ZXImageMerge
//
//  Created by FreeGeek on 16/1/11.
//  Copyright © 2016年 ZhongXi. All rights reserved.
//

#import "UIImage+ZXImageMerge.h"

@implementation UIImage (ZXImageMerge)
+ (UIImage*)MergeBackgroundImageView:(UIImageView*)backgroundImageView additionalImageView:(UIImageView*)additionalImageView addCoordinatesPoint:(CGPoint)point
{
    UIImage * backgroundImage = backgroundImageView.image;
    CGFloat backgroundWidth = backgroundImageView.bounds.size.width;
    CGFloat backgroundHeight = backgroundImageView.bounds.size.height;
    
    UIImage * additionalImage = additionalImageView.image;
    CGFloat additionalWidth = additionalImageView.bounds.size.width;
    CGFloat additionalHeight = additionalImageView.bounds.size.height;
    
    CGSize mergedSize = CGSizeMake(MAX(backgroundWidth, additionalWidth), MAX(backgroundHeight, additionalHeight));
    UIGraphicsBeginImageContext(mergedSize);
    
    [backgroundImage drawInRect:CGRectMake(0, 0, backgroundWidth,backgroundHeight)];
    [additionalImage drawInRect:CGRectMake(point.x,point.y,additionalWidth, additionalHeight)];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
}

+ (UIImage*)MergeBackgroundImage:(UIImage*)backgroundImage additionalImage:(UIImage*)additionalImage addCoordinatesPoint:(CGPoint)point
{
    CGImageRef backgroundImageRef = backgroundImage.CGImage;
    CGFloat backgroundWidth = CGImageGetWidth(backgroundImageRef);
    CGFloat backgroundHeight = CGImageGetHeight(backgroundImageRef);
    
    CGImageRef additionalImageRef = additionalImage.CGImage;
    CGFloat additionalWidth = CGImageGetWidth(additionalImageRef);
    CGFloat additionalHeight = CGImageGetHeight(additionalImageRef);
    
    CGSize mergedSize = CGSizeMake(MAX(backgroundWidth, additionalWidth), MAX(backgroundHeight, additionalHeight));
    UIGraphicsBeginImageContext(mergedSize);
    
    [backgroundImage drawInRect:CGRectMake(0, 0, backgroundWidth,backgroundHeight)];
    [additionalImage drawInRect:CGRectMake(point.x,point.y,additionalWidth, additionalHeight)];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
}

@end

//
//  ViewController.m
//  ZXImageMerge
//
//  Created by FreeGeek on 16/1/11.
//  Copyright © 2016年 ZhongXi. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+ZXImageMerge.h"
#import "MergeViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (weak, nonatomic) IBOutlet UIImageView *additionalImageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)MergeAction:(id)sender {
    
    MergeViewController * mergeViewController = [[MergeViewController alloc]init];
    //UIImage * mergerImage = [UIImage MergeBackgroundImage:_backgroundImageView.image additionalImage:_additionalImageView.image addCoordinatesPoint:CGPointMake(0, 0)];
    UIImage * mergerImage = [UIImage MergeBackgroundImageView:_backgroundImageView additionalImageView:_additionalImageView addCoordinatesPoint:CGPointMake(0, 0)];
    mergeViewController.mergeImage = mergerImage;
    [self.navigationController pushViewController:mergeViewController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

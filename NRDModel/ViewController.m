//
//  ViewController.m
//  NRDModel
//
//  Created by Brian Lambert on 7/2/14.
//  Copyright (c) 2014 Brian Lambert. All rights reserved.
//

#import "ViewController.h"
#import "WHPHeartAnimationViewController.h"

@interface ViewController ()
@end

@implementation ViewController
{
@private
    UIImageView * _imageView;
    
    WHPHeartAnimationViewController * _heartAnimationViewController;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Background"]];
    [[self view] addSubview:_imageView];
    
    _heartAnimationViewController = [[WHPHeartAnimationViewController alloc] init];
    [[self view] addSubview:[_heartAnimationViewController view]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

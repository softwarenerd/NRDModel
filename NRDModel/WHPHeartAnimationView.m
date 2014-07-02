//
//  WHPHeartAnimationView.m
//  NRDModel
//
//  Created by Brian Lambert on 7/2/14.
//  Copyright (c) 2014 Brian Lambert. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "WHPHeartAnimationView.h"

// Centers one thing (a) within another (b).
CG_INLINE CGFloat Center(CGFloat a, CGFloat b)
{
    return ((b - a) / 2.0);
}

// WHPHeartAnimationView (Internal) interface.
@interface WHPHeartAnimationView (Internal)

// tapGestureRecognizerAction callback.
- (void)tapGestureRecognizerAction:(UITapGestureRecognizer *)tapGestureRecognizer;

@end

// WHPHeartAnimationView implementation.
@implementation WHPHeartAnimationView
{
@private
    UIView * _viewInnerCircle;
    UITapGestureRecognizer * _tapGestureRecognizer;
}

// Class initializer.
- (id)initWithFrame:(CGRect)frame
{
    // Initialize superclass.
    self = [super initWithFrame:frame];
    
    // Handle errors.
    if (!self)
    {
        return nil;
    }
    
    _viewInnerCircle = [[UIView alloc] initWithFrame:CGRectMake(Center(150.0, 320.0), Center(150.0, 500), 150.0, 150.0)];
    [_viewInnerCircle setBackgroundColor:[UIColor colorWithRed:19.0/255.0 green:154.0/255.0 blue:231.0/255.0 alpha:0.9]];
    [[_viewInnerCircle layer] setCornerRadius:75.0];
    [self addSubview:_viewInnerCircle];
    
    _tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureRecognizerAction:)];
    [_tapGestureRecognizer setNumberOfTapsRequired:1];
    [self addGestureRecognizer:_tapGestureRecognizer];
    
    // Done.
    return self;
}

// Draw the receiver’s image within the specified rectangle.
- (void)drawRect:(CGRect)dirtyRect
{
    // Call the base class.
	[super drawRect:dirtyRect];
}

@end

// WHPHeartAnimationView (Internal) implementation.
@implementation WHPHeartAnimationView (Internal)

// tapGestureRecognizerAction callback.
- (void)tapGestureRecognizerAction:(UITapGestureRecognizer *)tapGestureRecognizer
{
    NSLog(@"Tapped!");
    
    
    // Animations.
    void (^animations)() = ^
    {
        [_viewInnerCircle setTransform:CGAffineTransformMakeScale(0.95, 0.95)];
    };
    
    // Completion.
    void (^completion)(BOOL) = ^(BOOL finished)
    {
        // Animations.
        void (^animations)() = ^
        {
            [_viewInnerCircle setTransform:CGAffineTransformMakeScale(1.05, 1.05)];
        };
        
        // Completion.
        void (^completion)(BOOL) = ^(BOOL finished)
        {
            [_viewInnerCircle setTransform:CGAffineTransformMakeScale(1.0, 1.0)];
        };
        
        [UIView animateWithDuration:0.2 animations:animations completion:completion];
    };
    

    [UIView animateWithDuration:0.2 animations:animations completion:completion];
    
    
}

@end

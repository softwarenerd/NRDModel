//
//  WHPHeartAnimationView.m
//  NRDModel
//
//  Created by Brian Lambert on 7/2/14.
//  Copyright (c) 2014 Brian Lambert. All rights reserved.
//

#import "UIColor+Extensions.h"

#import <QuartzCore/QuartzCore.h>
#import "WHPHeartAnimationView.h"

// Centers one thing (a) within another (b).
CG_INLINE CGFloat Center(CGFloat a, CGFloat b)
{
    return ((b - a) / 2.0);
}

// WHPHeartAnimationView (Internal) interface.
@interface WHPHeartAnimationView (Internal)

- (void)timerCallback:(NSTimer *)timer;

@end

// WHPHeartAnimationView implementation.
@implementation WHPHeartAnimationView
{
@private
    // The bezel circle view.
    UIView * _viewBezelCircle;
    
    // The outer circle view.
    UIView * _viewOuterCircle;
    
    // The inner circle view.
    UIView * _viewInnerCircle;

    
    
    NSTimer * _timer;
    float _rrInterval;
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
    
    [self setOpaque:NO];
    [self setBackgroundColor:[UIColor clearColor]];
    
    // Allocate, initialize, and add the bezel circle view.
    CGFloat bezelCircleDiameter = 250.0;
    _viewBezelCircle = [[UIView alloc] initWithFrame:CGRectMake(Center(bezelCircleDiameter, frame.size.width), Center(bezelCircleDiameter, frame.size.height), bezelCircleDiameter, bezelCircleDiameter)];
    [_viewBezelCircle setBackgroundColor:[UIColor colorWithRGB:0x0093e7]];
    [_viewBezelCircle setAlpha:0.15];
    [[_viewBezelCircle layer] setCornerRadius:bezelCircleDiameter / 2.0];
    [self addSubview:_viewBezelCircle];
    
    // Allocate, initialize, and add the outer circle view.
    CGFloat outerCircleDiameter = 186.8;
    _viewOuterCircle = [[UIView alloc] initWithFrame:CGRectMake(Center(outerCircleDiameter, frame.size.width), Center(outerCircleDiameter, frame.size.height), outerCircleDiameter, outerCircleDiameter)];
    [_viewOuterCircle setBackgroundColor:[UIColor colorWithRGB:0x0093e7]];
    [_viewOuterCircle setAlpha:0.23];
    [[_viewOuterCircle layer] setCornerRadius:outerCircleDiameter / 2.0];
    [self addSubview:_viewOuterCircle];

    // Allocate, initialize, and add the inner circle view.
    CGFloat innerCircleDiameter = 152.0;
    _viewInnerCircle = [[UIView alloc] initWithFrame:CGRectMake(Center(innerCircleDiameter, frame.size.width), Center(innerCircleDiameter, frame.size.height), innerCircleDiameter, innerCircleDiameter)];
    [_viewInnerCircle setBackgroundColor:[UIColor colorWithRGB:0x0093e7]];
    [_viewInnerCircle setAlpha:0.89];
    [[_viewInnerCircle layer] setCornerRadius:innerCircleDiameter / 2.0];
    [self addSubview:_viewInnerCircle];

    _rrInterval = (float)60 / (float)80;
    _timer = [NSTimer scheduledTimerWithTimeInterval:_rrInterval
                                              target:self
                                            selector:@selector(timerCallback:)
                                            userInfo:nil
                                             repeats:YES];
    
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

// Animates a heart beat.
- (void)animateHeartBeatForRRInterval:(float)rrInterval
{
    // Calculate the duration, but never longer than 3/10ths of a second.
    float duration = MIN(rrInterval, 0.3);
    
    // Animations.
    void (^animations)() = ^
    {
        // Set the start time and the frame duration.
        float startTime = 0.0;
        float frameDuration = (duration / 3.0);

        // First keyframe.
        [UIView addKeyframeWithRelativeStartTime:startTime
                                relativeDuration:frameDuration
                                    animations:^{
                                        [_viewBezelCircle setAlpha:0.11];
                                        [_viewOuterCircle setTransform:CGAffineTransformMakeScale(0.990, 0.990)];
                                        [_viewInnerCircle setTransform:CGAffineTransformMakeScale(0.985, 0.985)];
                                    }];
        startTime += frameDuration;
        
        // Second keyframe.
        [UIView addKeyframeWithRelativeStartTime:startTime
                                relativeDuration:frameDuration
                                      animations:^{
                                          [_viewBezelCircle setAlpha:0.19];
                                          [_viewOuterCircle setTransform:CGAffineTransformMakeScale(1.010, 1.010)];
                                          [_viewInnerCircle setTransform:CGAffineTransformMakeScale(1.015, 1.015)];
                                      }];
        startTime += frameDuration;

        // Third keyframe.
        [UIView addKeyframeWithRelativeStartTime:startTime
                                relativeDuration:frameDuration
                                      animations:^{
                                          [_viewBezelCircle setAlpha:0.15];
                                          [_viewOuterCircle setTransform:CGAffineTransformMakeScale(1.0, 1.0)];
                                          [_viewInnerCircle setTransform:CGAffineTransformMakeScale(1.0, 1.0)];
                                      }];
    };
    
    // Perform the keyframe animation.
    [UIView animateKeyframesWithDuration:duration
                                   delay:0.0
                                 options:UIViewKeyframeAnimationOptionCalculationModeCubicPaced
                              animations:animations
                              completion:nil];
}

- (void)timerCallback:(NSTimer *)timer
{
    [self animateHeartBeatForRRInterval:_rrInterval];
}

@end

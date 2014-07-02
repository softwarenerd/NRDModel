//
//  WHPHeartAnimationViewController.m
//  NRDModel
//
//  Created by Brian Lambert on 7/2/14.
//  Copyright (c) 2014 Brian Lambert. All rights reserved.
//

#import "WHPHeartAnimationViewController.h"
#import "WHPHeartAnimationView.h"

// WHPHeartAnimationViewController (WHPHeartAnimationViewDelegate) interface.
@interface WHPHeartAnimationViewController (WHPHeartAnimationViewDelegate) <WHPHeartAnimationViewDelegate>
@end

// WHPHeartAnimationViewController (Internal) interface.
@interface WHPHeartAnimationViewController (Internal)
@end

// WHPHeartAnimationViewController implementation.
@implementation WHPHeartAnimationViewController
{
@private
    // The view.
    WHPHeartAnimationView * _view;
}

// Class initializer.
- (id)init
{
    // Initialize superclass.
    self = [super init];
    
    // Handle errors.
    if (!self)
    {
        return nil;
    }
    
    // Initialize the screen rect.
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    
    // Allocate and initialize the view.
    _view = [[WHPHeartAnimationView alloc] initWithFrame:screenRect];
    [_view setDelegate:(id <WHPHeartAnimationViewDelegate>)self];

    // Done.
    return self;
}

// Creates the view that the controller manages.
- (void)loadView
{
    [self setView:_view];
}

@end

// WHPHeartAnimationViewController (WHPHeartAnimationViewDelegate) implementation.
@implementation WHPHeartAnimationViewController (WHPHeartAnimationViewDelegate)
@end

// WHPHeartAnimationViewController (Internal) implementation.
@implementation WHPHeartAnimationViewController (Internal)
@end

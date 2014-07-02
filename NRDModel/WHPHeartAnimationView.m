//
//  WHPHeartAnimationView.m
//  NRDModel
//
//  Created by Brian Lambert on 7/2/14.
//  Copyright (c) 2014 Brian Lambert. All rights reserved.
//

#import "WHPHeartAnimationView.h"

// WHPHeartAnimationView (Internal) interface.
@interface WHPHeartAnimationView (Internal)
@end

// WHPHeartAnimationView implementation.
@implementation WHPHeartAnimationView
{
@private
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
@end

//
//  WHPHeartAnimationView.h
//  NRDModel
//
//  Created by Brian Lambert on 7/2/14.
//  Copyright (c) 2014 Brian Lambert. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WHPHeartAnimationViewDelegate.h"

// WHPHeartAnimationView interface.
@interface WHPHeartAnimationView : UIView

// Properties.
@property (nonatomic, weak) id <WHPHeartAnimationViewDelegate> delegate;

// Class initializer.
- (id)initWithFrame:(CGRect)frame;

@end

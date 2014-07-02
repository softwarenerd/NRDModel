//
//  WHPHeartAnimationViewController.h
//  NRDModel
//
//  Created by Brian Lambert on 7/2/14.
//  Copyright (c) 2014 Brian Lambert. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WHPHeartAnimationViewControllerDelegate.h"

// WHPHeartAnimationViewController interface.
@interface WHPHeartAnimationViewController : UIViewController

// Properties.
@property (nonatomic, weak) id <WHPHeartAnimationViewControllerDelegate> delegate;

// Class initializer.
- (id)init;

@end

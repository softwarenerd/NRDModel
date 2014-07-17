//
//  UIColor+Extensions.h
//  Whoop
//
//  Created by Brian Lambert on 6/4/14.
//  Copyright (c) 2014 WHOOP, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

// UIColor (Extensions) interface.
@interface UIColor (Extensions)

/**
 * Creates and returns a opaque color object using the specified RGB value.
 *
 * @param rgb The red, green, blue value (e.g. 0x000000 is black and 0xffffff is white).
 * @return The color object. The color information represented by this object is in the device RGB colorspace.
 */
+ (UIColor *)colorWithRGB:(UInt32)rgb;

/**
 * Creates and returns a color object using the specified RGB component values.
 *
 * @param r The red component of the color object, specified as a value from 0 to 255.
 * @param g The green component of the color object, specified as a value from 0 to 255.
 * @param b The blue component of the color object, specified as a value from 0 to 255.
 * @return The color object. The color information represented by this object is in the device RGB colorspace.
 */
+ (UIColor *)colorWithR:(UInt8)r g:(UInt8)g b:(UInt8)b;

/**
 * Creates and returns a color object using the specified RGBA component values.
 *
 * @param r The red component of the color object, specified as a value from 0 to 255.
 * @param g The green component of the color object, specified as a value from 0 to 255.
 * @param b The blue component of the color object, specified as a value from 0 to 255.
 * @param a The alpha component of the color object, specified as a value from 0 to 255.
 * @return The color object. The color information represented by this object is in the device RGB colorspace.
 */
+ (UIColor *)colorWithR:(UInt8)r g:(UInt8)g b:(UInt8)b a:(UInt8)a;

@end

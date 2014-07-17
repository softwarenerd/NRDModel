//
//  UIColor+Extensions.m
//  Whoop
//
//  Created by Brian Lambert on 6/4/14.
//  Copyright (c) 2014 WHOOP, Inc. All rights reserved.
//

#import "UIColor+Extensions.h"

// UIColor (Extensions) implementation.
@implementation UIColor (Extensions)

/**
 * Creates and returns a opaque color object using the specified RGB value.
 *
 * @param rgb The red, green, blue value (e.g. 0x0193e8).
 * @return The color object. The color information represented by this object is in the device RGB colorspace.
 */
+ (UIColor *)colorWithRGB:(UInt32)rgb
{
    return [UIColor colorWithRed:(CGFloat)(rgb >> 16 & 0xff) / (CGFloat)255.0
                           green:(CGFloat)(rgb >>  8 & 0xff) / (CGFloat)255.0
                            blue:(CGFloat)(rgb       & 0xff) / (CGFloat)255.0
                           alpha:(CGFloat)1.0];
}

/**
 * Creates and returns a opaque color object using the specified RGB component values.
 *
 * @param r The red component of the color object, specified as a value from 0 to 255.
 * @param g The green component of the color object, specified as a value from 0 to 255.
 * @param b The blue component of the color object, specified as a value from 0 to 255.
 * @return The color object. The color information represented by this object is in the device RGB colorspace.
 */
+ (UIColor *)colorWithR:(UInt8)r g:(UInt8)g b:(UInt8)b
{
    return [UIColor colorWithRed:(CGFloat)r / (CGFloat)255.0
                           green:(CGFloat)g / (CGFloat)255.0
                            blue:(CGFloat)b / (CGFloat)255.0
                           alpha:(CGFloat)1.0];
}

/**
 * Creates and returns a color object using the specified RGBA component values.
 *
 * @param r The red component of the color object, specified as a value from 0 to 255.
 * @param g The green component of the color object, specified as a value from 0 to 255.
 * @param b The blue component of the color object, specified as a value from 0 to 255.
 * @param a The alpha component of the color object, specified as a value from 0 to 255.
 * @return The color object. The color information represented by this object is in the device RGB colorspace.
 */
+ (UIColor *)colorWithR:(UInt8)r g:(UInt8)g b:(UInt8)b a:(UInt8)a
{
    return [UIColor colorWithRed:(CGFloat)r / (CGFloat)255.0
                           green:(CGFloat)g / (CGFloat)255.0
                            blue:(CGFloat)b / (CGFloat)255.0
                           alpha:(CGFloat)a / (CGFloat)255.0];
}

@end

//
//  Utilities.h
//  sktemplate-objc
//
//  Created by Jeremy Novak on 3/11/16.
//  Copyright © 2016 Jeremy Novak. All rights reserved.
//

#ifndef Constants_h
#define Constants_h

#pragma mark - Debug
static const BOOL kDebug = YES;


#pragma mark - Screen Size
static __inline CGSize ScreenSize() {
    return [UIScreen mainScreen].bounds.size;
}

static __inline__ CGPoint ScreenCenter() {
    CGSize screenSize = ScreenSize();
    return CGPointMake(screenSize.width / 2, screenSize.height / 2);
}


#pragma mark - Animation Functions
static __inline__ float Smooth(float a, float b, float filterFactor) {
    return (a * (1 - filterFactor)) + b * filterFactor;
}

#pragma mark - Color Functions
static __inline__ SKColor* ColorFromRGB(int rgbValue) {
    return [SKColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0];
}


#pragma mark - Math Functions
static __inline__ int RandomIntegerBetween(int min, int max) {
    return min + arc4random_uniform(max - min + 1);
}

static __inline__ CGFloat RandomFloatRange(CGFloat min, CGFloat max) {
    return ((CGFloat)arc4random() / 0xFFFFFFFFu) * (max - min) + min;
}

#endif /* Constants_h */

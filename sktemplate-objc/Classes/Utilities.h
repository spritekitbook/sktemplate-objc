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
static const BOOL kDebug = NO;


#pragma mark - Screen Size and Positon
static __inline CGSize ScreenSize() {
    return [UIScreen mainScreen].bounds.size;
}

static __inline__ CGPoint ScreenCenter() {
    CGSize screenSize = ScreenSize();
    return CGPointMake(screenSize.width / 2, screenSize.height / 2);
}

static __inline__ CGPoint ScreenCenterBottom() {
    CGSize screenSize = ScreenSize();
    return CGPointMake(screenSize.width / 2, screenSize.height * 0.3);
}

static __inline__ CGPoint ScreenCenterTop() {
    CGSize screenSize = ScreenSize();
    return CGPointMake(screenSize.width / 2, screenSize.height * 0.7);
}


#pragma mark - Animation Functions
static __inline__ float Smooth(float startingPoint, float endingPoint, float percentToMove) {
    return (startingPoint * (1 - percentToMove)) + endingPoint * percentToMove;
}

#pragma mark - Color Functions
static __inline__ SKColor* ColorFromRGB(int rgbValue) {
    return [SKColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0];
}


#pragma mark - Math Functions
static __inline__ int RandomIntegerBetween(int min, int max) {
    return min + arc4random_uniform(max - min + 1);
}


#endif /* Constants_h */

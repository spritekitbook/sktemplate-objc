//
//  Floppy.m
//  sktemplate-objc
//
//  Created by Jeremy Novak on 3/11/16.
//  Copyright © 2016 Jeremy Novak. All rights reserved.
//

#import "Floppy.h"

@interface Floppy()

@property SKAction *flapAnimation;

@property CGPoint targetLocation;

@end

@implementation Floppy

#pragma mark - Init
-(instancetype)init {
    if ((self = [super init])) {
        
        SKTexture *texture = [[SKTextureAtlas atlasNamed:@"Sprites"] textureNamed:@"PinkBird0"];
        self = [Floppy spriteNodeWithTexture:texture];
        
        [self setup];
        [self setupAnimation];
        
    }
    
    return self;
}

#pragma mark - Setup
-(void)setup {
    _targetLocation = ScreenCenter();
}

-(void)setupAnimation {
    
    SKTexture *frame0 = [[SKTextureAtlas atlasNamed:@"Sprites"] textureNamed:@"PinkBird0"];
    SKTexture *frame1 = [[SKTextureAtlas atlasNamed:@"Sprites"] textureNamed:@"PinkBird1"];
    SKTexture *frame2 = [[SKTextureAtlas atlasNamed:@"Sprites"] textureNamed:@"PinkBird2"];
    SKTexture *frame3 = [[SKTextureAtlas atlasNamed:@"Sprites"] textureNamed:@"PinkBird3"];
    
    _flapAnimation = [SKAction animateWithTextures:@[frame0, frame1, frame2, frame3] timePerFrame:0.12];
    
    [self runAction:[SKAction repeatActionForever:_flapAnimation]];
    
}

#pragma mark - Actions
-(void)flyToPosition:(CGPoint)position {
    _targetLocation = position;
    
    if (_targetLocation.x < self.position.x) {
        [self setXScale:-1.0];
    } else {
        [self setXScale:1.0];
    }
}

#pragma mark - Update
-(void)update {

    CGFloat newX = Smooth(self.position.x, _targetLocation.x, 0.05);
    CGFloat newY = Smooth(self.position.y, _targetLocation.y, 0.05);
    
    self.position = CGPointMake(newX, newY);
}

@end

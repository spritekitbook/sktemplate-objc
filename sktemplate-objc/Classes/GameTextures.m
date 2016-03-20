//
//  GameTextures.m
//  sktemplate-objc
//
//  Created by Jeremy Novak on 3/20/16.
//  Copyright © 2016 Jeremy Novak. All rights reserved.
//

#import "GameTextures.h"

@interface GameTextures()

@property SKTextureAtlas *atlas;

@end


@implementation GameTextures

#pragma mark - Init
+(instancetype)sharedInstance {
    static GameTextures *sharedInstance = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    
    return sharedInstance;
}

-(instancetype)init {
    if ((self = [super init])) {
        [self setup];
    }
    
    return self;
}

#pragma mark - Setup
-(void)setup {
    
    self.atlas = [SKTextureAtlas atlasNamed:ATLAS];
}

#pragma mark - Public Methods
-(SKSpriteNode *)spriteWithName:(NSString *)name {
    SKTexture *texture = [self.atlas textureNamed:name];
    
    return [SKSpriteNode spriteNodeWithTexture:texture];
}

-(SKTexture *)textureWithName:(NSString *)name {
    return [self.atlas textureNamed:name];
}

@end

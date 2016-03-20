//
//  GameTextures.h
//  sktemplate-objc
//
//  Created by Jeremy Novak on 3/20/16.
//  Copyright © 2016 Jeremy Novak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameTextures : NSObject

+(instancetype)sharedInstance;

-(SKSpriteNode *)spriteWithName:(NSString *)name;
-(SKTexture *)textureWithName:(NSString *)name;

@end

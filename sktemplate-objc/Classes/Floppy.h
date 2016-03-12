//
//  Floppy.h
//  sktemplate-objc
//
//  Created by Jeremy Novak on 3/11/16.
//  Copyright © 2016 Jeremy Novak. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface Floppy : SKSpriteNode

-(void)flyToPosition:(CGPoint)position;
-(void)update;

@end

//
//  GameViewController.m
//  sktemplate-objc
//
//  Created by Jeremy Novak on 3/11/16.
//  Copyright (c) 2016 Jeremy Novak. All rights reserved.
//

#import "GameViewController.h"
#import "GameScene.h"

@implementation GameViewController


-(void)viewDidLayoutSubviews {
    
    [super viewDidLayoutSubviews];
    
    SKView *skView = (SKView *)self.view;
    
    if (!skView.scene) {
        
        if (kDebug) {
            skView.showsFPS = YES;
            skView.showsNodeCount = YES;
            skView.showsPhysics = YES;
        }
        
        CGSize viewSize = skView.bounds.size;
        
        GameScene *scene = [[GameScene alloc] initWithSize:viewSize];
        
        scene.scaleMode = SKSceneScaleModeAspectFill;
        
        SKTransition *transition = [SKTransition fadeWithColor:[SKColor blackColor] duration:0.25];
        
        [skView presentScene:scene transition:transition];
        
        // Preload the game music
        [[OALSimpleAudio sharedInstance] preloadBg:@"Destractor.mp3"];
        
        // Play the game music in a loop
        [[OALSimpleAudio sharedInstance] playBg:@"Destractor.mp3" loop:YES];
        
        
        if (kDebug) {
            NSLog(@"Screen width: %.2f, Screen height: %.2f", viewSize.width, viewSize.height);
        }
        
    }
    
}

- (BOOL)shouldAutorotate {
    
    return YES;
}

-(UIInterfaceOrientationMask)supportedInterfaceOrientations {
    
    return UIInterfaceOrientationMaskPortrait;
}

-(void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
}

-(BOOL)prefersStatusBarHidden {
    
    return YES;
}

@end

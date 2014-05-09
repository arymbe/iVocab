//
//  AppDelegate.h
//  iVocab
//
//  Created by arymbe on 4/19/14.
//  Copyright (c) 2014 arymbe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, AVAudioPlayerDelegate>
{
    AVAudioPlayer *audioPlayer1;
}

@property (strong, nonatomic) UIWindow *window;

@end

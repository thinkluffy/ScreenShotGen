//
//  ATAppDelegate.m
//  ScreenShotGen
//
//  Created by David Cai on 9/26/14.
//  Copyright (c) 2014 ThinkYeah. All rights reserved.
//

#import "SSAppDelegate.h"
#import "SSMainWindowController.h"

@interface SSAppDelegate ()

@property (nonatomic, strong) SSMainWindowController *mainWindowController;

@end

@implementation SSAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    self.mainWindowController = [[SSMainWindowController alloc] init];
    [self.mainWindowController showWindow:self];
}

@end

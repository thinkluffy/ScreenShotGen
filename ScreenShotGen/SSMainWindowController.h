//
//  SSMainWindowController.h
//  ScreenShotGen
//
//  Created by David Cai on 9/26/14.
//  Copyright (c) 2014 ThinkYeah. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SSScreenShotInfo : NSObject

@property (nonatomic, strong) NSURL *backgroundImageUrl;
@property (nonatomic, strong) NSURL *deviceImageUrl;
@property (nonatomic, strong) NSURL *screenShotImageUrl;
@property (nonatomic, copy) NSString *title;

@end

@interface SSMainWindowController : NSWindowController

@end

//
//  SSMainWindowController.m
//  ScreenShotGen
//
//  Created by David Cai on 9/26/14.
//  Copyright (c) 2014 ThinkYeah. All rights reserved.
//

#import "SSMainWindowController.h"

@interface SSMainWindowController ()

@property (weak) IBOutlet NSCollectionView *screenShotsCollectionView;

@property (weak) IBOutlet NSImageView *backgroundImageView;
@property (weak) IBOutlet NSImageView *deviceIamgeView;

- (IBAction)backgroundButtonDidClick:(id)sender;
- (IBAction)deviceButtonDidClick:(id)sender;

@property (nonatomic, strong) NSMutableArray/*SSScreenShotInfo*/ *screenShotInfos;

@end

@implementation SSMainWindowController

- (id)init
{
    self = [super initWithWindowNibName:@"SSMainWindowController"];
    if (self) {

    }
    return self;
}

- (void)windowDidLoad
{
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (IBAction)backgroundButtonDidClick:(id)sender
{
    NSOpenPanel *openDlg = [NSOpenPanel openPanel];
    
    [openDlg setCanChooseFiles:YES];
    [openDlg setCanChooseDirectories:NO];
    [openDlg setAllowedFileTypes:[NSArray arrayWithObjects:@"png", @"jpg", nil]];

    [openDlg setPrompt:@"Select"];
    
    if ([openDlg runModal] == NSOKButton) {
        // Get an array containing the full filenames of all
        // files and directories selected.
        NSArray *files = [openDlg URLs];
        NSURL *file = [files objectAtIndex:0];
    
        NSImage *picture =  [[NSImage alloc] initWithContentsOfURL:file];
        self.backgroundImageView.image = picture;
    }
}

- (IBAction)deviceButtonDidClick:(id)sender
{
    NSOpenPanel *openDlg = [NSOpenPanel openPanel];
    
    [openDlg setCanChooseFiles:YES];
    [openDlg setCanChooseDirectories:NO];
    [openDlg setAllowedFileTypes:[NSArray arrayWithObjects:@"png", @"jpg", nil]];
    
    [openDlg setPrompt:@"Select"];
    
    if ([openDlg runModal] == NSOKButton) {
        // Get an array containing the full filenames of all
        // files and directories selected.
        NSArray *files = [openDlg URLs];
        NSURL *file = [files objectAtIndex:0];
        
        NSImage *picture =  [[NSImage alloc] initWithContentsOfURL:file];
        self.deviceIamgeView.image = picture;
    }
}

@end

//
//  AppDelegate.m
//  Digi Cloud
//
//  Created by Mihai Cristescu on 24/04/2017.
//  Copyright © 2017 Mihai Cristescu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSFileManager+DigiCloud.h"
#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // Get a window
    CGRect bounds = [[UIScreen mainScreen] bounds];
    self.window = [[UIWindow alloc] initWithFrame: bounds];
    
    // Init flow manager
    self.flowController = [[FlowController alloc] initWithWindow: [self window]];
    
    // Create working folders
    [self createWorkingFolders];
    
    // Configure window color and root controller
    [self.window setBackgroundColor:[UIColor whiteColor]];
    [self.window setRootViewController:[self.flowController rootController]];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)createWorkingFolders {
    [NSFileManager createProfileImagesCacheFolder];
    [NSFileManager createFilesCacheFolder];
}

@end

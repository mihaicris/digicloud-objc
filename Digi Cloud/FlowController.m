//
//  FlowController.m
//  Digi Cloud
//
//  Created by Mihai Cristescu on 24/04/2017.
//  Copyright © 2017 Mihai Cristescu. All rights reserved.
//

#import "FlowController.h"

@interface FlowController ()

@end

@implementation FlowController

- (instancetype) initWithWindow:(UIWindow *) window {
    if ( self = [super init]) {
        _window = window;
        return self;
    } else {
        return nil;
    }
}

- (UIViewController *) rootController {
    if ([AppSettings hasRunBefore]) {
        return [self createMainNavigationController];
    } else {
        return [self createAccountSelectionController];
    }
}

- (UIViewController *) createAccountSelectionController {
    
    AccountSelectionViewController *controller = [[AccountSelectionViewController alloc] init];
    
    controller.onSelect = ^{
        __weak typeof(self) weakSelf = self;
        [[weakSelf window] setRootViewController: [weakSelf rootController]];
    };
    
    return controller;
}

- (UIViewController *) createMainNavigationController {
    MainNavigationController *controller = [[MainNavigationController alloc] init];
    
    controller.onLogout = ^{
        __weak typeof(self) weakSelf = self;
        [[weakSelf window] setRootViewController: [weakSelf rootController]];
    };
    
    return controller;}

@end

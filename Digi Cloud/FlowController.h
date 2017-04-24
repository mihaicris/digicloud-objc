
//
//  FlowController.h
//  Digi Cloud
//
//  Created by Mihai Cristescu on 24/04/2017.
//  Copyright © 2017 Mihai Cristescu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppSettings.h"
#import "AccountSelectionViewController.h"
#import "MainNavigationController.h"

@interface FlowController: NSObject

@property (strong, nonatomic) UIWindow *window;

- (instancetype) initWithWindow:(UIWindow *) window;
- (UIViewController *) rootController;
- (UIViewController *) createAccountSelectionController;
- (UIViewController *) createMainNavigationController;

@end

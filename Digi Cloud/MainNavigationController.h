//
//  MainNavigationController.h
//  Digi Cloud
//
//  Created by Mihai Cristescu on 24/04/2017.
//  Copyright © 2017 Mihai Cristescu. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^Block)(void);

@interface MainNavigationController : UINavigationController

@property (nonatomic, copy, nullable) Block onFinish;

@end

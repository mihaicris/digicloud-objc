//
//  AppSettings.h
//  Digi Cloud
//
//  Created by Mihai Cristescu on 24/04/2017.
//  Copyright © 2017 Mihai Cristescu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppSettings : NSObject

+ (BOOL)hasRunBefore;
+ (void)setRunBefore:(BOOL)runBefore;

@end

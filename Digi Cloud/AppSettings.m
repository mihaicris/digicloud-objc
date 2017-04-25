//
//  AppSettings.m
//  Digi Cloud
//
//  Created by Mihai Cristescu on 24/04/2017.
//  Copyright © 2017 Mihai Cristescu. All rights reserved.
//

#import "AppSettings.h"

@interface AppSettings ()

@end

@implementation AppSettings

+ (BOOL)hasRunBefore {
    return [[NSUserDefaults standardUserDefaults] boolForKey:@"hasRunBefore"];
}

+ (void)setRunBefore:(BOOL)runBefore {
   [[NSUserDefaults standardUserDefaults] setBool:runBefore forKey:@"hasRunBefore"];
}

@end

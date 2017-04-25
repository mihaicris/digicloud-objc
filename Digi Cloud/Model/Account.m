//
//  Account.m
//  Digi Cloud
//
//  Created by Mihai Cristescu on 25/04/2017.
//  Copyright © 2017 Mihai Cristescu. All rights reserved.
//

#import "Account.h"

@implementation Account

- (instancetype) initWithID:(NSString *) userID {
    if ( self = [super init]) {
        _userID = userID;
        return self;
    } else {
        return nil;
    }
}

+ (NSArray<Account *> *)accountItems {
    return [[NSArray alloc] init];
}

+ (NSDictionary *)keychainQuery:(Account *)account {
    return [[NSDictionary alloc] init];
}

- (NSString *)readToken {
    return @"TEST";
}

- (void)save:(NSString *) token {}

- (void)renameAccount:(NSString *)toNewName {}

- (void)deleteItem {}

- (void)deleteProfileImageFromCache {}

- (void)revokeToken {}

@end

//
//  Account.h
//  Digi Cloud
//
//  Created by Mihai Cristescu on 25/04/2017.
//  Copyright © 2017 Mihai Cristescu. All rights reserved.
//

#import <Foundation/Foundation.h>
#define Service @"DigiCloud"

@interface Account : NSObject

@property (nonatomic, strong) NSString *userID;

+ (NSArray<Account *> *)accountItems;
+ (NSDictionary *)keychainQuery:(Account *)account;

- (instancetype) initWithID:(NSString *) userID;
- (NSString *)readToken;
- (void)save:(NSString *) token;
- (void)renameAccount:(NSString *)toNewName;
- (void)deleteItem;
- (void)deleteProfileImageFromCache;
- (void)revokeToken;

@end

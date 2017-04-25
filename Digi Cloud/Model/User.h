//
//  User.h
//  Digi Cloud
//
//  Created by Mihai Cristescu on 25/04/2017.
//  Copyright © 2017 Mihai Cristescu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Permissions.h"

@interface User : NSObject

@property (nonatomic) NSString *id;
@property (nonatomic) NSString *firstName;
@property (nonatomic) NSString *lastName;
@property (nonatomic) NSString *email;
@property (nonatomic) Permissions *permissions;

@end

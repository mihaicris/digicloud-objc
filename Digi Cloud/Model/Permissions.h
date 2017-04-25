//
//  Permissions.h
//  Digi Cloud
//
//  Created by Mihai Cristescu on 25/04/2017.
//  Copyright © 2017 Mihai Cristescu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Permissions : NSObject

@property (nonatomic) BOOL read;
@property (nonatomic) BOOL owner;
@property (nonatomic) BOOL mount;
@property (nonatomic) BOOL create_receiver;
@property (nonatomic) BOOL create_link;
@property (nonatomic) BOOL comment;
@property (nonatomic) BOOL write;

@end

//
//  NSFileManager+DigiCloud.h
//  Digi Cloud
//
//  Created by Mihai Cristescu on 24/04/2017.
//  Copyright © 2017 Mihai Cristescu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileManager (DigiCloud)

+ (NSURL*)documentsDir;
+ (NSURL *)profileImagesCacheFolderURL;
+ (NSURL *)filesCacheFolderURL;
+ (void)createFolderAt:(NSURL *)url;
+ (void)createProfileImagesCacheFolder;
+ (void)createFilesCacheFolder;

@end

//
//  NSFileManager+DigiCloud.m
//  Digi Cloud
//
//  Created by Mihai Cristescu on 24/04/2017.
//  Copyright © 2017 Mihai Cristescu. All rights reserved.
//

#import "NSFileManager+DigiCloud.h"
#import "Constants.h"

@implementation NSFileManager (DigiCloud)

+ (NSURL *)documentsDir {
    
    NSArray<NSURL *> *urlArray = [self.defaultManager URLsForDirectory: NSDocumentDirectory
                                                             inDomains: NSUserDomainMask];
    NSURL *url = [urlArray firstObject];
    
    if (url)  {
        return url;
    } else {
        abort();
    }
}

+ (void)createFolderAt:(NSURL *)url {
    
    NSString *path = [url path];
    NSError *error;
    
    if (![[self defaultManager] fileExistsAtPath: path]) {
        [[self defaultManager] createDirectoryAtPath:path withIntermediateDirectories:YES attributes:nil error:&error];
        if (error) {
            NSLog(@"%@", [error localizedDescription]);
            abort();
        }
    }
}

+ (NSURL *)profileImagesCacheFolderURL {
    return [[self documentsDir] URLByAppendingPathComponent: CachedProfileImagesFolderName];
}

+ (NSURL *)filesCacheFolderURL {
    return [[self documentsDir] URLByAppendingPathComponent: CachedFilesFoldername];
}

+ (void)createProfileImagesCacheFolder {
    [self createFolderAt: [self profileImagesCacheFolderURL]];
}

+ (void)createFilesCacheFolder {
    [self createFolderAt: [self filesCacheFolderURL]];
}

@end

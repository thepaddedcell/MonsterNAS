//
//  MOBServer.m
//  MonsterNAS
//
//  Created by Craig Stanford on 7/05/13.
//  Copyright (c) 2013 Craig Stanford. All rights reserved.
//

#import "MOBServer.h"

@implementation MOBServer

#pragma mark - Persistance

- (void)save
{
    BOOL isDir = YES;
    if (![[NSFileManager defaultManager] fileExistsAtPath:[[self serverTypePathURL] path] isDirectory:&isDir]) {
        [[NSFileManager defaultManager] createDirectoryAtURL:[self serverTypePathURL] withIntermediateDirectories:YES attributes:nil error:nil];
    }
    
    BOOL saved = [NSKeyedArchiver archiveRootObject:self toFile:[[self filePathComponentURL] path]];
    NSLog(@"Saved? %@", saved ? @"YES" : @"NO");
}

#pragma mark - Retrieval

+ (NSArray *)servers
{
    NSError* error;
    NSArray* directoryContents =  [[NSFileManager defaultManager] contentsOfDirectoryAtPath:[[self serverPathURL] path] error:&error];
    
    NSLog(@"directoryContents ====== %@",directoryContents);

    NSMutableArray* array = [NSMutableArray array];

    //iterate each server subdirectory to get out the servers list...
    for (NSString* directoryComponent in directoryContents) {
        NSArray* directoryFiles = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:[[[self serverPathURL] URLByAppendingPathComponent:directoryComponent] path]  error:&error];
        for (NSString* fileComponent in directoryFiles) {
            MOBServer* server = [NSKeyedUnarchiver unarchiveObjectWithFile:[[[[self serverPathURL] URLByAppendingPathComponent:directoryComponent] URLByAppendingPathComponent:fileComponent] path]];
            NSLog(@"Server: %@", server);
            [array addObject:server];
        }
    }
    
    return [NSArray arrayWithArray:array];
}


//+ (NSArray *)serversOfType:(MOBServerType)type
//{
//
//}

#pragma mark - Helpers

// returns the URL to the application's Documents directory
+ (NSURL *)applicationDocumentsDirectory
{
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

- (NSURL *)applicationDocumentsDirectory
{
    return [[self class] applicationDocumentsDirectory];
}

+ (NSURL*)serverPathURL
{
    return [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"server"];
}

- (NSURL*)serverTypePathURL
{
    return [[[self class] serverPathURL] URLByAppendingPathComponent:[NSString stringWithFormat:@"%d", self.type]];
}

- (NSURL*)filePathComponentURL
{
    return [[self serverTypePathURL] URLByAppendingPathComponent:[NSString stringWithFormat:@"%@.txt", self.name]];
}

@end

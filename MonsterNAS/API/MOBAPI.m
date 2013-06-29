//
//  MOBAPI.m
//  MonsterNAS
//
//  Created by Craig Stanford on 29/06/13.
//  Copyright (c) 2013 Craig Stanford. All rights reserved.
//

#import "MOBAPI.h"

@implementation MOBAPI

+ (MOBAPI *)defaultAPI {
    static dispatch_once_t predicate;
    static MOBAPI* defaultAPI;
    
    dispatch_once(&predicate, ^{
        defaultAPI = [[self alloc] init];
        defaultAPI.queue = [[NSOperationQueue alloc] init];
    });
    return defaultAPI;
}


@end

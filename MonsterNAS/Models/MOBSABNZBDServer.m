//
//  SABNZBDServer.m
//  MonsterNAS
//
//  Created by Craig Stanford on 7/05/13.
//  Copyright (c) 2013 Craig Stanford. All rights reserved.
//

#import "MOBSABNZBDServer.h"

#define kPageSize 10

@interface MOBSABNZBDServer ()


@end


@implementation MOBSABNZBDServer

- (NSURL *)historyURL
{
    return [self URLForMode:@"history"];
}

- (NSURLRequest *)historyURLRequest
{
    return [NSURLRequest requestWithURL:[self historyURL]];
}



- (NSURL *)queueURL
{
    return [self URLForMode:@"queue"];
}

- (NSURLRequest *)queueURLRequest
{
    return [NSURLRequest requestWithURL:[self queueURL]];
}


- (NSURL *)categoriesURL
{
    return [self URLForMode:@"get_cats"];
}

- (NSURLRequest*)categoriesURLRequest
{
    return [NSURLRequest requestWithURL:[self categoriesURL]];
}



#pragma mark - Helpers

- (NSURL *)URLForMode:(NSString*)mode
{
    return [NSURL URLWithString:[self.address stringByAppendingFormat:@"/api?apikey=%@&mode=%@&start=0&limit=%d&output=json", self.apiKey, mode, kPageSize]];
}

@end

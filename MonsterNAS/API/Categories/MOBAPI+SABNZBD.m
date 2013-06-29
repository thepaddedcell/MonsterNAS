//
//  MOBAPI+SABNZBD.m
//  MonsterNAS
//
//  Created by Craig Stanford on 29/06/13.
//  Copyright (c) 2013 Craig Stanford. All rights reserved.
//

#import "MOBAPI+SABNZBD.h"
#import <AFNetworking.h>
#import "MOBSABNZBDHistory.h"
#import "MOBSABNZBDQueue.h"
#import "MOBSABNZBDQueueSlot.h"

@implementation MOBAPI (SABNZBD)

+ (void)updateCategoriesForServer:(MOBSABNZBDServer *)server success:(MOBAPIVoidBlock)success error:(MOBAPIErrorBlock)error
{
    AFJSONRequestOperation* operation = [[AFJSONRequestOperation alloc] initWithRequest:[server categoriesURLRequest]];
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"response: %@", responseObject);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"err: %@", error);
    }];
    [[[MOBAPI defaultAPI] queue] addOperation:operation];
}

+ (void)updateHistoryForServer:(MOBSABNZBDServer *)server success:(MOBAPIVoidBlock)success error:(MOBAPIErrorBlock)error
{
    AFJSONRequestOperation* operation = [[AFJSONRequestOperation alloc] initWithRequest:[server historyURLRequest]];
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSError* error = nil;
        MOBSABNZBDHistory* history = [MTLJSONAdapter modelOfClass:[MOBSABNZBDHistory class] fromJSONDictionary:responseObject[@"history"] error:&error];
        NSLog(@"History :%@", history);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"err: %@", error);
    }];
    [[[MOBAPI defaultAPI] queue] addOperation:operation];
}

+ (void)updateQueueForServer:(MOBSABNZBDServer *)server success:(MOBAPIVoidBlock)success error:(MOBAPIErrorBlock)error
{
    
}

@end

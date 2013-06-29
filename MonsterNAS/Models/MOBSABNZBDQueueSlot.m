//
//  MOBSABNZBDQueueSlot.m
//  MonsterNAS
//
//  Created by Craig Stanford on 7/05/13.
//  Copyright (c) 2013 Craig Stanford. All rights reserved.
//

#import "MOBSABNZBDQueueSlot.h"

@implementation MOBSABNZBDQueueSlot

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
                  @"status": @"status",
                  @"index": @"index",
                  @"ETA": @"eta",
                  @"timeLeft": @"timeleft",
                  @"age": @"avg_age",
                  @"priority": @"priority",
                  @"category": @"cat",
                  @"remaining": @"mbleft",
                  @"percentage": @"percentage",
                  @"size": @"size",
                  [NSNull null]: @"script",
                  [NSNull null]: @"msgid",
                  [NSNull null]: @"verbosity",
                  [NSNull null]: @"mb",
                  [NSNull null]: @"filename",
                  [NSNull null]: @"nzo_id",
                  [NSNull null]: @"unpackopts"
             };
}

@end

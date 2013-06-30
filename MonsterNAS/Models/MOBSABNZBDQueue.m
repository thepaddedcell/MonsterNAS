//
//  MOBSABNZBDQueue.m
//  MonsterNAS
//
//  Created by Craig Stanford on 7/05/13.
//  Copyright (c) 2013 Craig Stanford. All rights reserved.
//

#import "MOBSABNZBDQueue.h"
#import "MOBSABNZBDQueueSlot.h"

#import "MOBSABNZBDServer.h"

@interface MOBSABNZBDQueue ()

@property (nonatomic, weak) MOBSABNZBDServer* sabServer;

@end

@implementation MOBSABNZBDQueue

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"slots": @"slots",
             @"status": @"status",
             @"paused": @"paused",
             @"timeLeft": @"timeleft",
             @"sizeInMB": @"mb",
             @"ETA": @"eta",
             @"KBPerSec": @"kbpersec",
             [NSNull null]: @"cache_limit",
             [NSNull null]: @"categories",
             [NSNull null]: @"scripts",
             [NSNull null]: @"new_rel_url",
             [NSNull null]: @"restart_req",
             [NSNull null]: @"helpuri",
             [NSNull null]: @"uptime",
             [NSNull null]: @"refresh_rate",
             [NSNull null]: @"isverbose",
             [NSNull null]: @"start",
             [NSNull null]: @"version",
             [NSNull null]: @"diskspacetotal2",
             [NSNull null]: @"color_scheme",
             [NSNull null]: @"darwin",
             [NSNull null]: @"nt",
             [NSNull null]: @"last_warning",
             [NSNull null]: @"have_warnings",
             [NSNull null]: @"cache_art",
             [NSNull null]: @"finishaction",
             [NSNull null]: @"noofslots",
             [NSNull null]: @"cache_size",
             [NSNull null]: @"finish",
             [NSNull null]: @"new_release",
             [NSNull null]: @"pause_int",
             [NSNull null]: @"mbleft",
             [NSNull null]: @"diskspace2",
             [NSNull null]: @"diskspace1",
             [NSNull null]: @"diskspacetotal1",
             [NSNull null]: @"nzb_quota",
             [NSNull null]: @"loadavg",
             [NSNull null]: @"limit",
             [NSNull null]: @"speedlimit",
             [NSNull null]: @"webdir",
             [NSNull null]: @"queue_details",
             };
}

+ (NSValueTransformer *)slotsJSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[MOBSABNZBDQueueSlot class]];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"=> Status: %@, Slots Count: %d, Paused: %@", self.status, [self.slots count], self.paused ? @"YES" : @"NO"];
}

- (void)setServer:(id)server
{
    self.sabServer = server;
}

- (id)server
{
    return self.sabServer;
}

@end

//
//  MOBSABNZBDHistory.m
//  MonsterNAS
//
//  Created by Craig Stanford on 7/05/13.
//  Copyright (c) 2013 Craig Stanford. All rights reserved.
//

#import "MOBSABNZBDHistory.h"
#import "MOBSABNZBDHistorySlot.h"

@implementation MOBSABNZBDHistory

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"diskSpace": @"diskspace1",
             @"diskSpaceTotal": @"diskspacetotal1",
             @"paused": @"paused",
             @"size": @"size",
             @"sizeLeft": @"sizeleft",
             @"slots": @"slots",
             @"status": @"status",
             [NSNull null]: @"active_lang",
             [NSNull null]: @"cache_art",
             [NSNull null]: @"cache_max",
             [NSNull null]: @"cache_size",
             [NSNull null]: @"color_scheme",
             [NSNull null]: @"darwin",
             [NSNull null]: @"day_size",
             [NSNull null]: @"diskspace2",
             [NSNull null]: @"diskspacetotal2",
             [NSNull null]: @"eta",
             [NSNull null]: @"finishaction",
             [NSNull null]: @"have_quota",
             [NSNull null]: @"have_warnings",
             [NSNull null]: @"helpuri",
             [NSNull null]: @"kbpersec",
             [NSNull null]: @"last_warning",
             [NSNull null]: @"left_quota",
             [NSNull null]: @"loadavg",
             [NSNull null]: @"mb",
             [NSNull null]: @"mbleft",
             [NSNull null]: @"month_size",
             [NSNull null]: @"my_home",
             [NSNull null]: @"my_lcldata",
             [NSNull null]: @"new_rel_url",
             [NSNull null]: @"new_release",
             [NSNull null]: @"newzbin_url",
             [NSNull null]: @"noofslots",
             [NSNull null]: @"nt",
             [NSNull null]: @"nzb_quota",
             [NSNull null]: @"pause_int",
             [NSNull null]: @"paused_all",
             [NSNull null]: @"power_options",
             [NSNull null]: @"quota",
             [NSNull null]: @"restart_req",
             [NSNull null]: @"session",
             [NSNull null]: @"sizeleft",
             [NSNull null]: @"speed",
             [NSNull null]: @"speedlimit",
             [NSNull null]: @"timeleft",
             [NSNull null]: @"total_size",
             [NSNull null]: @"uniconfig",
             [NSNull null]: @"uptime",
             [NSNull null]: @"version",
             [NSNull null]: @"webdir",
             [NSNull null]: @"week_size"
             };
}

+ (NSValueTransformer *)slotsJSONTransformer
{
    return [MTLValueTransformer mtl_JSONArrayTransformerWithModelClass:[MOBSABNZBDHistorySlot class]];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"=> Status: %@, Slots Count: %d, Paused: %@", self.status, [self.slots count], self.paused ? @"YES" : @"NO"];
}

@end

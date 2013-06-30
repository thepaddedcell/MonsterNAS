//
//  MOBSABNZBDHistorySlot.m
//  MonsterNAS
//
//  Created by Craig Stanford on 29/06/13.
//  Copyright (c) 2013 Craig Stanford. All rights reserved.
//

#import "MOBSABNZBDHistorySlot.h"

@implementation MOBSABNZBDHistorySlot

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{
             @"name": @"name",
             @"failMessage": @"fail_message",
             @"slotID": @"id",
             @"size": @"size",
             @"category": @"category",
             @"downloadTime": @"download_time",
             @"status": @"status",
             @"nzoID": @"nzo_id",
             [NSNull null]: @"action_line",
             [NSNull null]: @"show_details",
             [NSNull null]: @"script_log",
             [NSNull null]: @"meta",
             [NSNull null]: @"loaded",
             [NSNull null]: @"pp",
             [NSNull null]: @"completeness",
             [NSNull null]: @"script",
             [NSNull null]: @"nzb_name",
             [NSNull null]: @"storage",
             [NSNull null]: @"script_line",
             [NSNull null]: @"completed",
             [NSNull null]: @"downloaded",
             [NSNull null]: @"report",
             [NSNull null]: @"path",
             [NSNull null]: @"postproc_time",
             [NSNull null]: @"url",
             [NSNull null]: @"bytes",
             [NSNull null]: @"url_info",
             [NSNull null]: @"stage_log"
             };
}

@end

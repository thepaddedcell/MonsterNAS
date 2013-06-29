//
//  MOBSABNZBDHistorySlot.h
//  MonsterNAS
//
//  Created by Craig Stanford on 29/06/13.
//  Copyright (c) 2013 Craig Stanford. All rights reserved.
//

#import "MTLModel.h"
#import <Mantle.h>

@interface MOBSABNZBDHistorySlot : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong) NSString * slotID;
@property (nonatomic, strong) NSString* size;
@property (nonatomic, strong) NSString* failMessage;
@property (nonatomic, strong) NSString* category;
@property (nonatomic, strong) NSString* downloadTime;
@property (nonatomic, strong) NSString* status;
@property (nonatomic, strong) NSString* name;

//"stage_log":[
//             {"name":"download","actions":["Downloaded in 9 minutes 27 seconds at an average of 1404kB/s"]},
//             {"name":"repair","actions":["[ubuntu] Repaired in 4 minutes 24 seconds","[ubuntu.sample] Quick Check OK"]},
//             {"name":"unpack","actions":["[ubuntu] Unpacked 1 file/folder in 36 seconds"]}
//             ]

@end

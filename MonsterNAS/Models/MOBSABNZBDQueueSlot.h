//
//  MOBSABNZBDQueueSlot.h
//  MonsterNAS
//
//  Created by Craig Stanford on 7/05/13.
//  Copyright (c) 2013 Craig Stanford. All rights reserved.
//

#import "MTLModel.h"
#import <Mantle.h>

@interface MOBSABNZBDQueueSlot : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong) NSString* status;
@property (nonatomic) NSInteger index;
@property (nonatomic, strong) NSString* ETA;
@property (nonatomic, strong) NSString* timeLeft;
@property (nonatomic, strong) NSString* age;
@property (nonatomic, strong) NSString* size;
@property (nonatomic, strong) NSString* priority;
@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* nzoID;
@property (nonatomic, strong) NSString* remaining;
@property (nonatomic, strong) NSString* percentage;
@property (nonatomic, strong) NSString* category;

@end

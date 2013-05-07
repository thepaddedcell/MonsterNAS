//
//  MOBSABNZBDQueue.h
//  MonsterNAS
//
//  Created by Craig Stanford on 7/05/13.
//  Copyright (c) 2013 Craig Stanford. All rights reserved.
//

#import "MTLModel.h"

@interface MOBSABNZBDQueue : MTLModel

@property (nonatomic, strong) NSArray* slots;
@property (nonatomic, strong) NSString* status;
@property (nonatomic) BOOL paused;
@property (nonatomic, strong) NSString* timeLeft;
@property (nonatomic, strong) NSString* sizeInMB;
@property (nonatomic, strong) NSString* ETA;
@property (nonatomic, strong) NSString* KBPerSec;

@end

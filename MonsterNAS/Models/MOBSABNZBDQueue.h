//
//  MOBSABNZBDQueue.h
//  MonsterNAS
//
//  Created by Craig Stanford on 7/05/13.
//  Copyright (c) 2013 Craig Stanford. All rights reserved.
//

#import <Mantle.h>

@interface MOBSABNZBDQueue : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong) NSArray* slots;
@property (nonatomic, strong) NSString* status;
@property (nonatomic) BOOL paused;
@property (nonatomic, strong) NSString* timeLeft;
@property (nonatomic, strong) NSString* sizeInMB;
@property (nonatomic, strong) NSString* ETA;
@property (nonatomic, strong) NSString* KBPerSec;

- (void)setServer:(id)server;
- (id)server;

- (void)pauseAllURLRequest;
- (void)resumeAllURLRequest;
- (void)shutdownURLRequest;

- (void)addSlotURLRequest:(NSURL*)url;

- (void)deleteSlotURLRequest:(NSString*)nzbID;
- (void)pauseSlotURLRequest:(NSString*)nzbID;
- (void)resumeSlotURLRequest:(NSString*)nzbID;
- (void)changePriorirty:(NSString*)priority forSlot:(NSString*)nzbID;

// --- QUEUE Actions
//Delete
//Pause
//Pause Individual
//Resume
//Resume Individual
//Shutdown
//Add by URL
//Change Priority


@end

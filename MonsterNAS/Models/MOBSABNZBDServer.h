//
//  SABNZBDServer.h
//  MonsterNAS
//
//  Created by Craig Stanford on 7/05/13.
//  Copyright (c) 2013 Craig Stanford. All rights reserved.
//

#import "MOBServer.h"

@interface MOBSABNZBDServer : MOBServer

@property (nonatomic, strong) NSArray* categories;
@property (nonatomic, strong) NSArray* scripts;
@property (nonatomic, strong) NSArray* slots;
@property (nonatomic, strong) NSString* uptime;
@property (nonatomic, strong) NSString* diskspaceUsed;
@property (nonatomic, strong) NSString* diskspaceTotal;

- (NSURLRequest*)historyURLRequest;
- (NSURLRequest*)queueURLRequest;
- (NSURLRequest*)categoriesURLRequest;

// --- QUEUE Actions
//Delete
//Pause
//Pause Individual
//Resume
//Resume Individual
//Shutdown
//Add by URL
//Change Priority

// --- HISTORY Actions
//Delete
//Retry

// --- CONFIG Actions
//Set Download Speed Limit


@end

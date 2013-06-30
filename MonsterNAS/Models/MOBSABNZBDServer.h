//
//  SABNZBDServer.h
//  MonsterNAS
//
//  Created by Craig Stanford on 7/05/13.
//  Copyright (c) 2013 Craig Stanford. All rights reserved.
//

#import <Mantle.h>
#import "MOBServer.h"

#import "MOBSABNZBDQueue.h"
#import "MOBSABNZBDHistory.h"

@interface MOBSABNZBDServer : MOBServer

@property (nonatomic, strong) MOBSABNZBDQueue* queue;
@property (nonatomic, strong) MOBSABNZBDHistory* history;

@property (nonatomic, strong) NSArray* categories;
@property (nonatomic, strong) NSArray* scripts;
@property (nonatomic, strong) NSArray* slots;
@property (nonatomic, strong) NSString* uptime;
@property (nonatomic, strong) NSString* diskspaceUsed;
@property (nonatomic, strong) NSString* diskspaceTotal;

- (NSURLRequest*)historyURLRequest;
- (NSURLRequest*)queueURLRequest;
- (NSURLRequest*)categoriesURLRequest;
- (NSURLRequest*)scriptsURLRequest;
- (NSURLRequest*)restartURLRequest;


// --- HISTORY Actions
//Delete
//Retry

// --- CONFIG Actions
//Set Download Speed Limit


@end

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

@end

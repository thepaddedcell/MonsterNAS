//
//  MOBServer.h
//  MonsterNAS
//
//  Created by Craig Stanford on 7/05/13.
//  Copyright (c) 2013 Craig Stanford. All rights reserved.
//

#import "MTLModel.h"

@interface MOBServer : MTLModel

@property (nonatomic) MOBServerType type;
@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* address;
@property (nonatomic, strong) NSString* apiKey;

- (void)save;

+ (NSArray*)serversOfType:(MOBServerType)type;
+ (NSArray*)servers;

@end

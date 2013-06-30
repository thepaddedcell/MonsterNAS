//
//  MOBSABNZBDHistory.h
//  MonsterNAS
//
//  Created by Craig Stanford on 7/05/13.
//  Copyright (c) 2013 Craig Stanford. All rights reserved.
//

#import <Mantle.h>

@interface MOBSABNZBDHistory : MTLModel <MTLJSONSerializing>

@property (nonatomic, strong) NSArray* slots;
@property (nonatomic, strong) NSString* diskSpace;
@property (nonatomic, strong) NSString* diskSpaceTotal;
@property (nonatomic) BOOL paused;
@property (nonatomic, strong) NSString* nzoID;
@property (nonatomic, strong) NSString* size;
@property (nonatomic, strong) NSString* sizeLeft;
@property (nonatomic, strong) NSString* status;

- (void)setServer:(id)server;
- (id)server;

@end

//
//  MOBAPI.h
//  MonsterNAS
//
//  Created by Craig Stanford on 29/06/13.
//  Copyright (c) 2013 Craig Stanford. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^MOBAPIVoidBlock)(void);
typedef void (^MOBAPIIDBlock)(id object);
typedef void (^MOBAPIDictionaryBlock)(NSDictionary* dictionary);
typedef void (^MOBAPIArrayBlock)(NSArray *array);
typedef void (^MOBAPIErrorBlock)(NSError *error);


@interface MOBAPI : NSObject

@property (nonatomic, strong) NSOperationQueue* queue;

+ (MOBAPI *)defaultAPI;

@end

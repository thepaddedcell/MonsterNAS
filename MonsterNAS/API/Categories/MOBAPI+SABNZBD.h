//
//  MOBAPI+SABNZBD.h
//  MonsterNAS
//
//  Created by Craig Stanford on 29/06/13.
//  Copyright (c) 2013 Craig Stanford. All rights reserved.
//

#import "MOBAPI.h"
#import "MOBSABNZBDServer.h"

@interface MOBAPI (SABNZBD)

+ (void)updateHistoryForServer:(MOBSABNZBDServer*)server success:(MOBAPIVoidBlock)success error:(MOBAPIErrorBlock)error;
+ (void)updateQueueForServer:(MOBSABNZBDServer*)server success:(MOBAPIVoidBlock)success error:(MOBAPIErrorBlock)error;
+ (void)updateCategoriesForServer:(MOBSABNZBDServer*)server success:(MOBAPIVoidBlock)success error:(MOBAPIErrorBlock)error;

@end

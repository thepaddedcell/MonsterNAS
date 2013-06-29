//
//  MOBViewController.m
//  MonsterNAS
//
//  Created by Craig Stanford on 7/05/13.
//  Copyright (c) 2013 Craig Stanford. All rights reserved.
//

#import "MOBViewController.h"
#import "MOBAPI+SABNZBD.h"
#import "MOBSABNZBDServer.h"


@interface MOBViewController ()

@end

@implementation MOBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    MOBSABNZBDServer* server = [[MOBSABNZBDServer alloc] init];
    server.address = @"http://thepaddedcell.no-ip.org:8080";
    server.name = @"SAB";
    server.apiKey = @"82e84b476d68cbe28ad1d9afb494397d";
    
    [MOBAPI updateHistoryForServer:server success:^{
        
    } error:^(NSError *error) {
        
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

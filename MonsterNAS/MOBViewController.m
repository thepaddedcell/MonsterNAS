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
#import "MOBAddServerTypeViewController.h"

@interface MOBViewController ()

- (IBAction)addServerPressed:(id)sender;

@end

@implementation MOBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSArray* servers = [MOBServer servers];
    MOBSABNZBDServer* server = nil;
    if ([servers count]) {
        
//        server = [[MOBSABNZBDServer alloc] init];
//        server.address = @"http://thepaddedcell.no-ip.org:8080";
//        server.name = @"SAB";
//        server.apiKey = @"82e84b476d68cbe28ad1d9afb494397d";
//        
//        [server save];
        server = servers[0];

//        [MOBAPI updateQueueForServer:server success:^{
//            
//        } error:^(NSError *error) {
//            
//        }];

    }
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (void)addServerPressed:(id)sender
{
    MOBAddServerTypeViewController* controller = [[MOBAddServerTypeViewController alloc] init];
    UINavigationController* nav = [[UINavigationController alloc] initWithRootViewController:controller];
    [self presentViewController:nav animated:YES completion:nil];
}

@end

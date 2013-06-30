//
//  MOBAddServerDetailsViewController.m
//  MonsterNAS
//
//  Created by Craig Stanford on 1/07/13.
//  Copyright (c) 2013 Craig Stanford. All rights reserved.
//

#import "MOBAddServerDetailsViewController.h"
#import "MOBServer.h"

@interface MOBAddServerDetailsViewController ()

@property (nonatomic) MOBServerType serverType;

@property (nonatomic, strong) IBOutlet UITextField* nameTextField;
@property (nonatomic, strong) IBOutlet UITextField* addressTextField;
@property (nonatomic, strong) IBOutlet UITextField* portTextField;
@property (nonatomic, strong) IBOutlet UITextField* apiKeyTextField;

- (IBAction)savePressed:(id)sender;

@end

@implementation MOBAddServerDetailsViewController

- (id)initWithServerType:(MOBServerType)serverType
{
    self = [super init];
    if (self) {
        self.serverType = serverType;
        switch (self.serverType) {
            case MOBServerTypeSABNZBD:
                self.title = @"SABNZBD Server";
                break;
            case MOBServerTypeSickBeard:
                self.title = @"SickBeard Server";
                break;
            default:
                break;
        }
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)savePressed:(id)sender
{
    MOBServer* server = [[MOBServer alloc] init];
    server.name = self.nameTextField.text;
    server.address = [NSString stringWithFormat:@"%@:%@", self.addressTextField.text, self.portTextField.text];
    server.apiKey = self.apiKeyTextField.text;
    server.type = self.serverType;
    [server save];
}

@end

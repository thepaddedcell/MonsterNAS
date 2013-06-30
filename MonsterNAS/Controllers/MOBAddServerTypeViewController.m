//
//  MOBAddServerTypeViewController.m
//  MonsterNAS
//
//  Created by Craig Stanford on 1/07/13.
//  Copyright (c) 2013 Craig Stanford. All rights reserved.
//

#import "MOBAddServerTypeViewController.h"
#import "MOBAddServerDetailsViewController.h"

@interface MOBAddServerTypeViewController ()

@property (nonatomic, strong) IBOutlet UIButton* sabServerButton;
@property (nonatomic, strong) IBOutlet UIButton* sickBeardServerButton;
@property (nonatomic, strong) IBOutlet UIButton* couchPotatoServerButton;
@property (nonatomic, strong) IBOutlet UIButton* transmissionServerButton;

- (IBAction)serverTypeButtonPressed:(id)sender;

@end

@implementation MOBAddServerTypeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancelPressed:)];
        self.title = @"Add Server";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

#pragma mark - Actions

- (void)cancelPressed:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)serverTypeButtonPressed:(id)sender
{
    MOBServerType serverType;
    if (sender == self.sabServerButton) {
        serverType = MOBServerTypeSABNZBD;
    }
    
    if (sender == self.sickBeardServerButton) {
        serverType = MOBServerTypeSickBeard;
    }
    
    if (sender == self.couchPotatoServerButton ||
        sender == self.transmissionServerButton) {
        [[[UIAlertView alloc] initWithTitle:@"OOPS!" message:@"That server type isn't supported yet..." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
        return;
    }
    
    MOBAddServerDetailsViewController* controller = [[MOBAddServerDetailsViewController alloc] initWithServerType:serverType];
    [self.navigationController pushViewController:controller animated:YES];
    
}

@end

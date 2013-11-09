//
//  ViewController.m
//  ParseSetup
//
//  Created by A on 11/9/13.
//  Copyright (c) 2013 CarterIncorporated. All rights reserved.
//

#import "ViewController.h"
#import "LocationListViewController.h"

@interface ViewController ()
@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
        NSLog(@"View Controller Loaded!");
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)buttonClicked:(id)sender {
    NSLog(@"Button Click!");
    
    LocationListViewController *listViewController = [[LocationListViewController alloc] initWithStyle:UITableViewStylePlain];
    [self.navigationController pushViewController:listViewController animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

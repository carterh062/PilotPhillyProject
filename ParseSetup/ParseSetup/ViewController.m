//
//  ViewController.m
//  ParseSetup
//
//  Created by A on 11/9/13.
//  Copyright (c) 2013 CarterIncorporated. All rights reserved.
//

#import "ViewController.h"
#import "LocationListViewController.h"
#import "InfoViewController.h"
#import "MapUtility.h"
#import "ParseHandler.h"
@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
        NSLog(@"View Controller Loaded!");
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)addLocationButtonPressed:(id)sender
{
    InfoViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"InfoVC"];
 
    MapUtility *_mapData = [[MapUtility alloc] init];
    
    _mapData.latitude = [self.mapView userLocation].location.coordinate.latitude;
    _mapData.longitude = [self.mapView userLocation].location.coordinate.longitude;
    
    [controller setLatAndLong:_mapData.latitude longi:_mapData.longitude];

    
    
    [self.navigationController pushViewController:controller animated:NO];
}

- (IBAction)recentLocationsButtonClicked:(id)sender {
    
    LocationListViewController *listViewController = [[LocationListViewController alloc] initWithStyle:UITableViewStylePlain];
    
    [self.navigationController pushViewController:listViewController animated:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

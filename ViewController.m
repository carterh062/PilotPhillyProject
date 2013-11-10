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
//    InfoViewController *inforamtionViewController = [[InfoViewController alloc] init];
//    [self.navigationController pushViewController:inforamtionViewController animated:YES];
    
    NSLog(@"test");
}

- (IBAction)recentLocationsButtonClicked:(id)sender {
    NSLog(@"Button Click!");
    MapUtility *_mapData = [[MapUtility alloc] init];
    
    _mapData.latitude = [self.mapView userLocation].location.coordinate.latitude;
    _mapData.longitude = [self.mapView userLocation].location.coordinate.longitude;
    
    ParseHandler *parseH = [[ParseHandler alloc]init];
    [parseH startParse];
    [parseH pushLocationLatitude:_mapData.latitude longitude:_mapData.longitude title:@"String title" currAddress:@"Something"];
    
    NSLog(@"Latitude: %f",[self.mapView userLocation].location.coordinate.latitude);
    NSLog(@"Longitude: %f",[self.mapView userLocation].location.coordinate.longitude);
    
    NSLog(@" %@", _mapData);
    
    NSLog(@" %f %f", _mapData.longitude, _mapData.latitude);
    LocationListViewController *listViewController = [[LocationListViewController alloc] initWithStyle:UITableViewStylePlain];
    
    

    [self.navigationController pushViewController:listViewController animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

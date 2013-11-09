//
//  ViewController.h
//  ParseSetup
//
//  Created by A on 11/9/13.
//  Copyright (c) 2013 CarterIncorporated. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>


@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet MKMapView *mapView;

- (IBAction)buttonClicked:(id)sender;

@end

//
//  DetailedLocationViewController.m
//  ParseSetup
//
//  Created by Emmett Neyman on 11/9/13.
//  Copyright (c) 2013 Emmett Neyman. All rights reserved.
//

#import "DetailedLocationViewController.h"

@interface DetailedLocationViewController ()
@property (weak, nonatomic) IBOutlet UILabel *testLabel;

@end

@implementation DetailedLocationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    _testLabel.text = [NSString stringWithFormat:@"%d", _cellClicked];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

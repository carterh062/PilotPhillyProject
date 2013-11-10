//
//  InfoViewController.m
//  ParseSetup
//
//  Created by Andrew Dobroshynsky on 11/9/13.
//  Copyright (c) 2013 Andrew Dobroshynsky. All rights reserved.
//

#import "InfoViewController.h"
#import "ViewController.h"
#import "MapUtility.h"
#import "ParseHandler.h"
@interface InfoViewController ()
@property (strong, nonatomic) IBOutlet UITextField *notesTextField;
@property (strong, nonatomic) IBOutlet UITextField *titleTextField;
@property (strong, nonatomic) NSString *someTitle;
@property (strong, nonatomic) NSString *notes;
@property (strong , nonatomic) ViewController *controller;
@property (nonatomic) double lat;
@property (nonatomic) double longi;

@end

@implementation InfoViewController
@synthesize lat;
@synthesize longi;
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
    //[self.navigationController setNavigationBarHidden:YES];
    NSLog(@"lat test %f",lat);
    NSLog(@" longi test %f",longi);
	// Do any additional setup after loading the view.
}

- (void)setLatAndLong:(double)latitude longi:(double)longitude{
    self.lat = latitude;
    self.longi = longitude;
}

- (IBAction)titleReturnPressed:(id)sender {
    [self.titleTextField resignFirstResponder];
}
- (IBAction)notesReturnPressed:(id)sender {
    [self.notesTextField resignFirstResponder];
}
- (IBAction)finishedTitleEditing:(id)sender {
    _someTitle = self.titleTextField.text;
    
}
- (IBAction)finishedNotesEditing:(id)sender {
    _notes = self.notesTextField.text;
    
    NSLog(@"%@", _notes);
}

- (IBAction)saveButtonClicked:(id)sender {
    ParseHandler *parseH = [[ParseHandler alloc]init];
    [parseH startParse];
    [parseH pushLocationLatitude:lat longitude:longi title:_someTitle notes:_notes currAddress:@"fdsa" ];
    [parseH getLocationOfObject:@"nnt"];
    ViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"OrigVC"];
    [self.navigationController pushViewController:controller animated:YES];

    }


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

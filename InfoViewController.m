//
//  InfoViewController.m
//  ParseSetup
//
//  Created by Andrew Dobroshynsky on 11/9/13.
//  Copyright (c) 2013 Andrew Dobroshynsky. All rights reserved.
//

#import "InfoViewController.h"

@interface InfoViewController ()
@property (strong, nonatomic) IBOutlet UITextField *notesTextField;
@property (strong, nonatomic) IBOutlet UITextField *titleTextField;

@end

@implementation InfoViewController

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
}
- (IBAction)titleReturnPressed:(id)sender {
    [self.titleTextField resignFirstResponder];
}
- (IBAction)notesReturnPressed:(id)sender {
    [self.notesTextField resignFirstResponder];
}
- (IBAction)finishedTitleEditing:(id)sender {
    NSString *titleText = self.titleTextField.text;
    
    NSLog(@"%@", titleText);
    
}
- (IBAction)finishedNotesEditing:(id)sender {
    NSString *notesText = self.notesTextField.text;
    
    NSLog(@"%@", notesText);
}

- (IBAction)saveButtonClicked:(id)sender {
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

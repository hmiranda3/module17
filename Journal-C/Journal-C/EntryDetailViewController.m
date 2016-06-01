//
//  EntryDetailViewController.m
//  Journal-C
//
//  Created by Habib Miranda on 5/31/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

#import "EntryDetailViewController.h"

@interface EntryDetailViewController () <UITextFieldDelegate>

#pragma mark - Outlets

@property (weak, nonatomic) IBOutlet UITextField *entryTitleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextField;

@end

@implementation EntryDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateWithEntry:self.entry];
}

- (void)updateWithEntry:(Entry *)entry
{
    if (entry) {
        self.entry = entry;
        self.entryTitleTextField.text = self.entry.title;
        self.bodyTextField.text = self.entry.bodyText;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - Action Buttons

- (IBAction)saveButtonTapped:(id)sender
{
    if (self.entry) {
        self.entry.title = self.entryTitleTextField.text;
        self.entry.bodyText = self.bodyTextField.text;
        self.entry.timeStamp = [NSDate date];
    } else {
        
        Entry *entry = [[Entry alloc] initWithTitle:self.entryTitleTextField.text bodyText:self.bodyTextField.text timeStamp:[NSDate date]];
        
        [[EntryController sharedInstance] addEntry:entry];
        
        self.entry = entry;
    }
    
    [self.navigationController popViewControllerAnimated:true];

}

- (IBAction)clearButtonTapped:(id)sender
{
    self.entryTitleTextField.text = @"";
    self.bodyTextField.text = @"";
}

#pragma mark - UITextFieldDelegate Methods

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    return true;
}

@end



















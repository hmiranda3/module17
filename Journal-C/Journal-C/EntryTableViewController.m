//
//  EntryTableViewController.m
//  Journal-C
//
//  Created by Habib Miranda on 5/31/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

#import "EntryTableViewController.h"
#import "EntryController.h"
#import "EntryDetailViewController.h"

@interface EntryTableViewController ()

@end

@implementation EntryTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [EntryController sharedInstance].entries.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"entryCell" forIndexPath:indexPath];
    Entry *entry = [EntryController sharedInstance].entries[indexPath.row];
    cell.textLabel.text = entry.title;
    return cell;
}



- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        Entry *entry = [EntryController sharedInstance].entries[indexPath.row];
        [[EntryController sharedInstance] deleteEntry:entry];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"fromCell"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        Entry *entry = [EntryController sharedInstance].entries[indexPath.row];
        EntryDetailViewController *detailViewController = segue.destinationViewController;
        detailViewController.entry = entry;
    }
    
}



@end

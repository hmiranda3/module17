//
//  PlaylistTableViewController.m
//  PlaylistOBJC
//
//  Created by Habib Miranda on 5/31/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

#import "PlaylistTableViewController.h"
#import "PlaylistController.h"
#import "SongTableViewController.h"

@interface PlaylistTableViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation PlaylistTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}


#pragma mark - Action Button

- (IBAction)addButtonTapped:(id)sender
{
    
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [[PlaylistController sharedInstance].playlists count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"playlistCell" forIndexPath:indexPath];
    Playlist *playlist = [PlaylistController sharedInstance].playlists[indexPath.row];
    cell.textLabel.text = playlist.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%lu songs", [playlist.songs count]];
    return cell;
}


// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        Playlist *playlist = [PlaylistController sharedInstance].playlists[indexPath.row];
        [[PlaylistController sharedInstance] deletePlaylist:playlist];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"toSongSegue"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Playlist *playlist = [PlaylistController sharedInstance].playlists[indexPath.row];
        SongTableViewController *songTVC = (SongTableViewController *)[segue destinationViewController];
        songTVC.playlist = playlist;
    }
    
}

@end
















//
//  SongTableViewController.h
//  PlaylistOBJC
//
//  Created by Habib Miranda on 5/31/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Playlist.h"

@interface SongTableViewController : UITableViewController

@property (strong, nonatomic) Playlist *playlist;

@end

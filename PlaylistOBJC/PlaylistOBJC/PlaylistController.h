//
//  PlaylistController.h
//  PlaylistOBJC
//
//  Created by Habib Miranda on 5/31/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Playlist.h"
#import "Song.h"

@interface PlaylistController : NSObject

@property (strong, nonatomic) NSMutableArray *playlists;

-(void) createPlaylistWithTitle: (NSString *)title;
-(void) deletePlaylist:(Playlist *)playlist;
-(void) addSongWithTitle:(NSString *)title andArtist:(NSString *)artist toPlaylist:(Playlist *)playlist;
-(void) deleteSong:(Song *)song fromPlaylist:(Playlist *)playlist;

+(PlaylistController *)sharedInstance;
-(instancetype)init;


@end

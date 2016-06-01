//
//  PlaylistController.m
//  PlaylistOBJC
//
//  Created by Habib Miranda on 5/31/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

#import "PlaylistController.h"

@implementation PlaylistController

-(instancetype)init
{
    self = [super init];
    if (self) {
        self.playlists = [[NSMutableArray alloc] init];
    }
    return self;
    
}

+ (PlaylistController *)sharedInstance {
    static PlaylistController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^ {
        sharedInstance = [PlaylistController new];
    });
    return sharedInstance;
}


-(void)createPlaylistWithTitle:(NSString *)title
{
    Playlist *playlist = [[Playlist alloc] initWithName:title songs: [[NSMutableArray alloc] init]];
    [self.playlists addObject:playlist];
}


-(void)deletePlaylist:(Playlist *)playlist
{
    [self.playlists removeObject:playlist];
}


-(void)addSongWithTitle:(NSString *)title andArtist:(NSString *)artist toPlaylist:(Playlist *)playlist
{
    Song *song = [[Song alloc]initWithTitle:title artist:artist];
    [playlist.songs addObject:song];
}


-(void)deleteSong:(Song *)song fromPlaylist:(Playlist *)playlist
{
    [playlist.songs removeObject:song];
}




@end

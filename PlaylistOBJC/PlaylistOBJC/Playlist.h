//
//  Playlist.h
//  PlaylistOBJC
//
//  Created by Habib Miranda on 5/31/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Playlist : NSObject

@property (copy, nonatomic) NSString *name;
@property (strong, nonatomic) NSMutableArray *songs;

-(instancetype)initWithName: (NSString *)name songs: (NSMutableArray *)songs;


@end

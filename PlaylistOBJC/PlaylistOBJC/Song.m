//
//  Song.m
//  PlaylistOBJC
//
//  Created by Habib Miranda on 5/31/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

#import "Song.h"

@implementation Song

-(instancetype)initWithTitle:(NSString *)title artist:(NSString *)artist
{
    self = [super init];
    if (self) {
        self.title = title;
        self.artist = artist;
    }
    return self;
}

@end

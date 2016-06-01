//
//  EntryController.h
//  Journal-C
//
//  Created by Habib Miranda on 5/31/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface EntryController : NSObject

@property (strong, nonatomic) NSMutableArray *entries;

- (void)addEntry:(Entry *)entry;
- (void)deleteEntry:(Entry *)entry;

+ (EntryController *)sharedInstance;


@end

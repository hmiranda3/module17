//
//  EntryController.m
//  Journal-C
//
//  Created by Habib Miranda on 5/31/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

#import "EntryController.h"
#import "Entry.h"

@implementation EntryController

static NSString * const EntriesKey = @"entries";

-(instancetype)init
{
    self = [super init];
    if (self) {
        self.entries = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addEntry:(Entry *)entry
{
    [self.entries addObject:entry];
}

-(void)deleteEntry:(Entry *)entry
{
    [self.entries removeObject:entry];
}

- (void)saveToPersistentStorage {
    NSMutableArray *entryDictionaries = [NSMutableArray new];
    for (Entry *entry in self.entries) {
        [entryDictionaries addObject:entry.dictionaryCopy];
    }
    
    [[NSUserDefaults standardUserDefaults] setObject:entryDictionaries forKey:EntriesKey];
}

- (void)loadFromPersistentStorage {
    
    NSMutableArray *entries = [NSMutableArray new];
    
    NSArray *entryDictionaries = [[NSUserDefaults standardUserDefaults] objectForKey:EntriesKey];
    
    for (NSDictionary *dictionary in entryDictionaries) {
        
        Entry *entry = [[Entry alloc] initWithDictionary:dictionary];
        [entries addObject:entry];
    }
    
    self.entries = entries;
}


+ (EntryController *)sharedInstance {
    static EntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^ {
        sharedInstance = [EntryController new];
    });
    return sharedInstance;
}



@end

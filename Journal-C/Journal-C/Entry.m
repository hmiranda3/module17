//
//  Entry.m
//  Journal-C
//
//  Created by Habib Miranda on 5/31/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

#import "Entry.h"

static NSString * const titleKey = @"titleKey";
static NSString * const bodyTextKey = @"bodyTextKey";
static NSString * const timeStampKey = @"timeStampKey";

@implementation Entry

-(instancetype)initWithTitle:(NSString *)title bodyText: (NSString *)bodyText timeStamp:(NSDate *)timeStamp;
{
    self = [super init];
    if (self) {
        self.title = title;
        self.bodyText = bodyText;
        self.timeStamp = [NSDate new];
    }
    return self;
}

//Create Dictionary copy for NSUserDefaults 
- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    
    self = [super init];
    if (self) {
        self.title = dictionary[titleKey];
        self.bodyText = dictionary[bodyTextKey];
        self.timeStamp = dictionary[timeStampKey];
    }
    
    return self;
}

- (NSDictionary *)dictionaryCopy {
    
    return @{
             titleKey: self.title,
             bodyTextKey: self.bodyText,
             timeStampKey: self.timeStamp
             };
}


@end

//
//  Entry.h
//  Journal-C
//
//  Created by Habib Miranda on 5/31/16.
//  Copyright © 2016 littleJohns. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Entry : NSObject

@property (copy, nonatomic) NSDate *timeStamp;
@property (copy, nonatomic) NSString *title;
@property (copy, nonatomic) NSString *bodyText;
@property (strong, nonatomic) NSDictionary *dictionaryCopy;

-(instancetype)initWithTitle: (NSString *)title bodyText: (NSString *)bodyText timeStamp:(NSDate *)timeStamp;
-(instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
